class ReturnsController < ApplicationController
  before_action :set_return, only: [:update]

  def index
    contracts = Contract.where(Status: "O").where.not(SecondaryStatus: "R").includes(:customer)
    @customer_names = contracts.map { |contract| { num: contract.customer.CNUM, name: contract.customer.NAME } }
    contract_param = params.keys.find { |key| key.start_with?('contract_') }

    if params[:part_number].present? || params[:qr_number].present?
      part_number = params[:part_number].present? ? params[:part_number] : params[:qr_number]
      @contract = contracts.find_by(CNTR: Item.find_by(PartNumber: part_number)&.CNTR)
    elsif params[:cust_name].present?
      @customer = Customer.find_by(CNUM: params[:customer])
      customer_contracts = contracts.where(CUSN: @customer.CNUM)
      @contract_nums = customer_contracts.pluck(:CNTR)
    end

    if contract_param && params[contract_param].present?
      contract_number = params[contract_param]
      @contract = Contract.find_by(CNTR: contract_number)
    end
  end

  def show
    @operators = Operator.where(Inactive: false)

    contract = Contract.find_by(CNTR: params[:id])
    return_step = contract.returns.count + 1

    @return = contract.returns.create!(return_step: return_step) do |new_return|
      new_return.contract_cntr = contract.CNTR
      new_return.created_at = Time.now
      new_return.updated_at = Time.now
    end

    contract_items_with_accessories = @return.contract.contract_items
      .where.not(QTY: 0)
      .where.not(HRSC: 0)
      .where(TXTY: "R")
      .order(:ITEM)
      .map do |contract_item|
    item_header = Item.find_by(KEY: contract_item.item.Header)
    accessories = item_header.accessories

    accessory_items = accessories.map { |accessory| Item.find(accessory.ItemKey) }
    dbmm = accessory_items.any? { |accessory| accessory.FUEL&.end_with?("MM") }

    {
      contract_item: contract_item,
      accessory_items: accessory_items,
      dbmm: dbmm
    }
    end.compact

    @contract_items_with_accessories = contract_items_with_accessories
  end

  def update
    dynamic_params = params[:dynamic_params] || {}

    sorted_contract_items = @return.contract.contract_items
      .where.not(QTY: 0)
      .where.not(HRSC: 0)
      .where(TXTY: "R")
      .order(:ITEM)

    sorted_contract_items.each_with_index do |contract_item, index|
      return_param = dynamic_params["return#{index}"]

      if return_param == "1"
        @return.return_items.create(
          key: contract_item.item.KEY,
          name: contract_item.item.Name,
          fuel: dynamic_params["return#{index}-fuel"],
          hours: dynamic_params["return#{index}-hours"],
          dbmm: dynamic_params["return#{index}-dbmm"],
          jerry: dynamic_params["return#{index}-jerry"],
          return_qty: dynamic_params["return#{index}-qty"]
        )
      end
    end

    if @return.update(return_params)
      ReturnMailer.send_return_email(@return).deliver_now
      redirect_to returns_path, notice: "Return was successfully updated"
    else
      render :show, alert: "Error updating return"
    end
  end

  private

  def set_return
    @return = Return.find(params[:id])
  end

  def return_params
    params.require(:return).permit(:opid, :opnm, :return_step, :damage, :damage_notes, :damage_photo, :damage_photo_url, :taped, :notes_attached, :notes)
  end
end
