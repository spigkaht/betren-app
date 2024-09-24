class ReturnItem < ApplicationRecord
  establish_connection :secondary

  belongs_to :return
end
