class ReturnsController < ApplicationController
  before_action :set_return, only: [:update]

  def index
    contracts = Contract.where(Status: "O").where.not(SecondaryStatus: "R").includes(:customer)
    @customer_names = contracts.map { |contract| contract.customer.NAME }
    contract_param = params.keys.find { |key| key.start_with?('contract_') }

    if params[:part_number].present? || params[:qr_number].present?
      part_number = params[:part_number].present? ? params[:part_number] : params[:qr_number]
      @contract = Contract.find_by(CNTR: Item.find_by(PartNumber: part_number)&.CNTR)
    elsif params[:customer].present?
      @customer = Customer.find_by(NAME: params[:customer])
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

    contract = Contract.find(params[:id])
    return_step = contract.returns.count + 1

    @return = contract.returns.find_or_create_by!(return_step: return_step) do |new_return|
      new_return.created_at = Time.now
      new_return.updated_at = Time.now
    end

    contract_items_with_accessories = @return.contract.contract_items.map do |contract_item|
      next if contract_item.QTY.zero?

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

    @return.contract.contract_items.each_with_index do |contract_item, index|
      return_param = dynamic_params["return#{index+1}"]

      if return_param == "1"
        @return.return_items.create(
          key: contract_item.item.KEY,
          name: contract_item.item.Name,
          fuel: dynamic_params["return#{index+1}-fuel"],
          hours: dynamic_params["return#{index+1}-hours"],
          dbmm: dynamic_params["return#{index+1}-dbmm"],
          return_qty: dynamic_params["return#{index+1}-qty"]
        )
      end
    end

    if @return.update(return_params)
      redirect_to returns_path, notice: "Return was successfully updated"
    else
      render :show, alert: "Error updating return"
    end
  end

  # def update
  #   dynamic_params = params[:dynamic_params] || {}

  #   count = @return.contract.contract_items.count
  #   count.times do |return_item, index|
  #     return_param = dynamic_params["return#{index+1}"]

  #     if return_param == "1"
  #       @return.return_items.create(
  #         key: dynamic_params["return#{index+1}-key"],
  #         name: dynamic_params["return#{index+1}-name"],
  #         fuel: dynamic_params["return#{index+1}-fuel"],
  #         hours: dynamic_params["return#{index+1}-hours"],
  #         dbmm: dynamic_params["return#{index+1}-dbmm"],
  #         return_qty: dynamic_params["return#{index+1}-qty"]
  #       )
  #     end
  #   end
  # end

  private

  def set_return
    @return = Return.find(params[:id])
  end

  def return_params
    params.require(:return).permit(:opid, :opnm, :return_step)
  end
end
