class PaymentType < ApplicationRecord
  self.table_name = "PaymentMethod"

  has_many :contracts, foreign_key: "PYMT", primary_key: "PayMeth"
end
