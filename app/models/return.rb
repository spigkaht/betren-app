class Return < ApplicationRecord
  establish_connection :secondary

  belongs_to :contract, foreign_key: 'contract_cntr', primary_key: 'CNTR'
  has_many :return_items
  has_many :return_accessories
end
