class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    # @invoice = Contract.all
    # @customers = Customer.all
    # @items = Item.all
  end

  def complete
    @returns = Return.where(complete: false).where(store: current_user.store)
  end
end
