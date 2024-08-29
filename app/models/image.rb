class Image < ApplicationRecord
  establish_connection :secondary

  belongs_to :template
end
