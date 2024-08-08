# app/jobs/generate_and_email_contracts_job.rb
class ContractMailer < ApplicationMailer
  default from: "benj@betterrentals.com.au"

  def send_contract_email(contract, pdf)
    @contract = contract
    attachments["Invoice ##{contract.CNTR}.pdf"] = pdf
    mail(to: "benj@betterrentals.com.au", subject: "Invoice ##{contract.CNTR}")
  end
end
