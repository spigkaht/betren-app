include ActionView::Helpers::NumberHelper

class InvoicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    today_beginning = 0.days.ago.beginning_of_day
    today_end = 0.days.ago.end_of_day

    @invoices = Contract.where(Completed: today_beginning..today_end)
                        .where.not(TOTL: :PAID)
                        .where.not('CNTR LIKE ?', 'r%')
                        .where.not('CNTR LIKE ?', 't%')
                        .where('PYMT LIKE ?', 'D')
  end

  def show
    @invoice = Contract.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        pdf = InvoicePdfGenerator.new(@invoice).generate
        send_data pdf.render, filename: "Contract #{@invoice.CNTR}.pdf", type: 'application/pdf', disposition: 'inline'
      end
    end
  end
end
