class ContractsController < ApplicationController
  def index
    one_week_ago = 1.week.ago
    @contracts = Contract.includes(:contract_items).where('Transactions.CMDT >= ?', one_week_ago).where.not(completed: nil)
    @review_contracts = Contract.includes(:contract_items).where('Transactions.CMDT >= ?', one_week_ago).where('STAT IN (?)', "OR")

    # @contract_items = @contract.contract_items.order('TransactionItems.SUBF')
  end

  def show
    @contract = Contract.includes(:contract_items).find(params[:id])

    @contract_items = @contract.contract_items.order('TransactionItems.SUBF')
  end
end
