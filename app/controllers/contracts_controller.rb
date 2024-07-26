class ContractsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @contracts = Contract.where(Status: "D", Completed: "2024-07-23")
      .includes(
                :contract_items,
                :customer,
                :contract_status,
                :contract_secondary_status,
                :operator,
                :payment_type,
                :branch
                )
      .limit(5)
  end

  def show
    @contract = Contract.find(params[:id])
  end
end
