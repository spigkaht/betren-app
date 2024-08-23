# app/jobs/generate_and_email_invoices_job.rb
class InvoiceMailer < ApplicationMailer
  default from: "Better Rentals <hello@betterrentals.com.au>"

  def send_invoice_email(invoice, pdf)
    @invoice = invoice
    attachments["Invoice ##{invoice.CNTR}.pdf"] = pdf
    mail(
      to: "#{@invoice.customer.Email}",
      bcc: "bradf@betterrentals.com.au, benj@betterrentals.com.au",
      # to: "benj@betterrentals.com.au",
      subject: "Invoice ##{invoice.CNTR}"
      )
  end
end
