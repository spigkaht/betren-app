class Contact < ApplicationRecord
  self.table_name = "VW_GlobalContacts"

  belongs_to :customer, foreign_key: "CustomerId", primary_key: "CNUM"
end
