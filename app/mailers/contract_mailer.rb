class ContractMailer < ApplicationMailer
  def send_contract_email(contract, pdf)
    @contract = contract
    attachments["contract_#{contract.id}.pdf"] = pdf
    mail(to: "benj@betterrentals.com.au", subject: 'Your Contract PDF')
  end
end
