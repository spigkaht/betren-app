class Branch < ApplicationRecord
  self.table_name = "VW_GlobalStores"

  has_many :contracts, foreign_key: "STR", primary_key: "Id"
end
