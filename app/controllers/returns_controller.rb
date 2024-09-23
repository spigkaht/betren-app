class ReturnsController < ApplicationController
  before_action :set_return, only: [:show, :update]

  def index
    contracts = Contract.where(Status: "O").where.not(SecondaryStatus: "R").includes(:customer)
    @customer_names = contracts.map { |contract| contract.customer.NAME }
    contract_param = params.keys.find { |key| key.start_with?('contract_') }

    if params[:part_number].present? || params[:qr_number].present?
      part_number = params[:part_number].present? ? params[:part_number] : params[:qr_number]
      item = Item.find_by(PartNumber: part_number)
      @return = Contract.find_by(CNTR: item.CNTR)
    elsif params[:customer].present?
      @customer = Customer.find_by(NAME: params[:customer])
      customer_contracts = contracts.where(CUSN: @customer.CNUM)
      @contract_nums = customer_contracts.pluck(:CNTR)
    end

    if contract_param && params[contract_param].present?
      contract_number = params[contract_param]
      @return = Contract.find_by(CNTR: contract_number)
    end
  end

  def show
    @operators = Operator.where(Inactive: false)

    contract = Contract.find(params[:id])
    @return = Return.new(contract: contract)
  end

  def update
    if @return.update(return_params)
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
    params.require(:return).permit(:opid, :opnm)
  end
end
