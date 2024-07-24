class TransactionItem < ApplicationRecord
  self.table_name = "TransactionItems"

  belongs_to :transaction, foreign_key: "CNTR"
end
