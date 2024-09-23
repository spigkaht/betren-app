class Job < ApplicationRecord
  establish_connection :secondary
  mount_uploader :photo, PhotoUploader
  mount_uploader :photo1, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader
  mount_uploader :photo4, PhotoUploader
  mount_uploader :photo5, PhotoUploader
  mount_uploader :photo6, PhotoUploader
  mount_uploader :photo7, PhotoUploader
  mount_uploader :photo8, PhotoUploader

  belongs_to :item, primary_key: 'NUM', foreign_key: 'item_num', class_name: 'Item'
  belongs_to :template
  has_one :answer, dependent: :destroy
  has_many :returns
  accepts_nested_attributes_for :answer

  scope :completed, -> { where.not(completed_at: nil) }
  scope :incomplete, -> { where(completed_at: nil) }

  def self.for_items_with_return_dates
    joins(:item).where('items.LDATE > jobs.completed_at OR jobs.completed_at IS NULL')
  end
end
