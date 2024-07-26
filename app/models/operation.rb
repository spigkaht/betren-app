class Operation < ApplicationRecord
  self.table_name = "TransactionOperation"

  has_many :contracts, foreign_key: "Operation", primary_key: "OperationNumber"
end
