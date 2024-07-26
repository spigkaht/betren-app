class Contract < ApplicationRecord
  self.table_name = "Transactions"

  has_many :contract_items, foreign_key: "CNTR", primary_key: "CNTR"
  belongs_to :customer, foreign_key: "CUSN", primary_key: "CNUM"
  belongs_to :contract_status, foreign_key: "Status", primary_key: "Status"
  belongs_to :contract_secondary_status, foreign_key: "SecondaryStatus", primary_key: "SecondaryStatus"
  belongs_to :operator, foreign_key: "OPID", primary_key: "OPNO"
  belongs_to :operation, foreign_key: "Operation", primary_key: "OperationNumber"
  belongs_to :payment_type, foreign_key: "PYMT", primary_key: "PayMeth"
  belongs_to :branch, foreign_key: "STR", primary_key: "Id"
end
