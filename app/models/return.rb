class Return < ApplicationRecord
  establish_connection :secondary
  mount_uploader :damage_photo, PhotoUploader

  belongs_to :contract
  has_many :return_items
  has_many :return_accessories
end
