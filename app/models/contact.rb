class Contact < ApplicationRecord
  self.table_name = "VW_GlobalContacts"

  belongs_to :customer, foreign_key: "CustomerId", primary_key: "CNUM"

  # def self.generate_and_send_contract_pdfs
  #   contracts = where(CNTR: "187837")

  #   contracts.each do |contract|
  #     pdf = InvoicePdfGenerator.new(contract).generate
  #     ContractMailer.send_contract_email(contract, pdf).deliver_now
  #   end
  # end
end
