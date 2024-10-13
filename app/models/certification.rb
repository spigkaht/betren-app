class Certification < ApplicationRecord
  self.table_name = "CertificationDetail"

  belongs_to :certification_type, foreign_key: "CertificationTypeId", primary_key: "CertificationTypeId"
  belongs_to :operator, foreign_key: "OpNo", primary_key: "OPNO"

  default_scope { where(Inactive: false) }
end
