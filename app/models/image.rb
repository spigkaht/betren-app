class Image < ApplicationRecord
  establish_connection :secondary

  belongs_to :template

  has_one_attached :photo
end
