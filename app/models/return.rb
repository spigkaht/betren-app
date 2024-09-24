class Return < ApplicationRecord
  establish_connection :secondary

  belongs_to :contract
  has_many :return_items
  has_many :return_accessories
end
