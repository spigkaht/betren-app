class ContractSecondaryStatus < ApplicationRecord
  self.table_name = "TransactionSecondaryStatus"

  has_many :contracts, foreign_key: "SecondaryStatus", primary_key: "SecondaryStatus"
end
