# app/jobs/generate_and_email_contracts_job.rb
class ContractMailer < ApplicationMailer
  default from: "benj@betterrentals.com.au"

  def send_contract_email(contract, pdf)
    @contract = contract
    attachments["contract_#{contract.CNTR}.pdf"] = pdf
    mail(to: "benj@betterrentals.com.au", subject: "Your Contract PDF")
  end
end
