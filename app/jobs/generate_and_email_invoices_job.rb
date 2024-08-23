# app/jobs/generate_and_email_invoices_job.rb
class GenerateAndEmailInvoicesJob < ApplicationJob
  queue_as :default

  def perform
    puts "Starting GenerateAndEmailInvoicesJob"

    today_beginning = 3.days.ago.beginning_of_day
    today_end = 1.days.ago.end_of_day

    puts "Fetching invoices completed between #{today_beginning and today_end}"

    invoices = Contract.where(Completed: today_beginning..today_end)
                        .where(CLDT: today_beginning..today_end)
                        .where.not(TOTL: :PAID)
                        .where.not('CNTR LIKE ?', 'r%')
                        .where.not('CNTR LIKE ?', 't%')
                        .where('PYMT LIKE ?', 'D')

    puts "Found #{invoices.count} invoices"

    invoices.each do |invoice|
      puts "Processing invoice ##{invoice.CNTR}"

      if !invoice.customer.Email.include?("@")
        puts "Missing valid email"
      elsif invoice.JOBN == "NP"
        puts "NO PRINT"
      else
        pdf = InvoicePdfGenerator.new(invoice).generate
        InvoiceMailer.send_invoice_email(invoice, pdf.render).deliver_now

        puts "Email sent for invoice ##{invoice.CNTR}"
      end
    end

    puts "GenerateAndEmailInvoicesJob completed"
  end
end
