class ContractsController < ApplicationController
  def index
    @contracts = Contract.where('STAT IN (?)', ["O", "OI", "OJ"])
  end

  def show
    @contract = Contract.includes(:contract_items)
                        .find(params[:id])

    @contract_items = @contract.contract_items.order('TransactionItems.SUBF')
  end
end
