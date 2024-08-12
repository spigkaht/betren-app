# app/jobs/generate_and_email_invoices_job.rb
class InvoiceMailer < ApplicationMailer
  default from: "benj@betterrentals.com.au"

  def send_invoice_email(invoice, pdf)
    @invoice = invoice
    attachments["Invoice ##{invoice.CNTR}.pdf"] = pdf
    mail(to: "benj@betterrentals.com.au, bradf@betterrentals.com.au", subject: "Invoice ##{invoice.CNTR}")
  end
end
