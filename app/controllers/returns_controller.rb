class ReturnsController < ApplicationController
  def index
    if params[:part_number].present? || params[:qr_number].present?
      part_number = params[:part_number].present? ? params[:part_number] : params[:qr_number]
      puts "PART NUM: #{part_number}"
      @item = Item.find_by(PartNumber: part_number)
      @return = Contract.find_by(CNTR: @item.CNTR)
    end
  end

  def show

  end
end
