class ContractStatus < ApplicationRecord
  self.table_name = "TransactionStatus"

  has_many :contracts, foreign_key: "Status", primary_key: "Status"
end
