class CertificationType < ApplicationRecord
  self.table_name = "CertificationType"

  has_many :certifications, foreign_key: "CertificationTypeId", primary_key: "CertificationTypeId"
end
