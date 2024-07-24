class ContractsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @contracts = Contract.all
  end
end
