class Template < ApplicationRecord
  establish_connection :secondary

  has_many :images
  has_many :questions, dependent: :destroy
  has_many :jobs
  accepts_nested_attributes_for :questions, allow_destroy: true

  validates :header, uniqueness: true

  def to_param
    header
  end
end
