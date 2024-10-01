# app/jobs/generate_and_email_invoices_job.rb
class InvoiceMailer < ApplicationMailer
  default from: "Better Rentals <hello@betterrentals.com.au>"

  def send_invoice_email(invoice, pdf)
    @invoice = invoice
    attachments["Invoice ##{invoice.CNTR}.pdf"] = pdf
    mail(
      to: "#{@invoice.customer.Email}",
      bcc: "copies@betterrentals.com.au",
      subject: "Thanks for hiring from Better Rentals"
      )
  end
end
