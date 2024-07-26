class Customer < ApplicationRecord
  self.table_name = "CustomerFile"
  self.primary_key = "CNUM"

  has_many :contracts, foreign_key: "CUSN", primary_key: "CNUM"
  has_many :contacts, foreign_key: "CustomerId", primary_key: "CNUM"
end
