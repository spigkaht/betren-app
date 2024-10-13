class Operator < ApplicationRecord
  self.table_name = "OperatorId"
  has_many :contracts, foreign_key: "OPID", primary_key: "OPNO"
  has_many :certifications, foreign_key: "OpNo", primary_key: "OPNO"

  default_scope { where(Inactive: false) }
end
