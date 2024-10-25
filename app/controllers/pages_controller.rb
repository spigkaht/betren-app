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

  def fixjobs
    @items = Item.where.not('PartNumber LIKE ?', '%000')
                 .where.not('PartNumber LIKE ?', '%[^0-9]%')
                 .where.not('PartNumber LIKE ?', '')
                 .where(QTY: 1)
                 .pluck(:partnumber)

    puts "======= params: #{params[:item] if params[:item] } ========"

    if params[:item]
      item = Item.find_by(PartNumber: params[:item])
      @jobs = Job.where(item_num: item.NUM)
    end
  end
end
