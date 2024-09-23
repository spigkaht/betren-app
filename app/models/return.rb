class Return < ApplicationRecord
  establish_connection :secondary

  belongs_to :job
end
