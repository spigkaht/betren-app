class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @contracts = Contract.all
    @customers = Customer.all
    @items = Item.all
  end
end
