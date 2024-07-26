class Operator < ApplicationRecord
  self.table_name = "OperatorId"
  has_many :contracts, foreign_key: "OPID", primary_key: "OPNO"
end
