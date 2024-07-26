class Item < ApplicationRecord
  self.table_name = "ItemFile"

  has_many :contract_items, foreign_key: "ITEM", primary_key: "NUM"
end
