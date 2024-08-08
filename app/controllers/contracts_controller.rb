include ActionView::Helpers::NumberHelper

class ContractsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @contracts = Contract.where(Status: "D", Completed: "2024-07-23")
    # .includes(
    #           :contract_items,
    #           :customer,
    #           :contract_status,
    #           :contract_secondary_status,
    #           :operator,
    #           :payment_type,
    #           :branch
    #           )
    # .limit(5)
  end

  def show
    @contract = Contract.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        pdf = ContractPdfGenerator.new(@contract).generate
        send_data pdf.render, filename: "Contract #{@contract.CNTR}.pdf", type: 'application/pdf', disposition: 'inline'
      end
    end
  end
end
