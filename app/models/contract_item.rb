class ContractItem < ApplicationRecord
  self.table_name = "TransactionItems"

  belongs_to :contract, foreign_key: "CNTR", primary_key: "CNTR"
  belongs_to :item, foreign_key: "ITEM", primary_key: "NUM"
end
