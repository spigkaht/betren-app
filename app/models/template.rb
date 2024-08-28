class Template < ApplicationRecord
  establish_connection :secondary
  
  has_many :images
  has_many :questions
  has_many :jobs
end
