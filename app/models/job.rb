class Job < ApplicationRecord
  establish_connection :secondary

  belongs_to :item, primary_key: 'NUM', foreign_key: 'item_num', class_name: 'Item'
  belongs_to :template
  has_one :answer, dependent: :destroy
  accepts_nested_attributes_for :answer

  # validate :photos_required_on_update, on: :update

  scope :completed, -> { where.not(completed_at: nil) }
  scope :incomplete, -> { where(completed_at: nil) }

  def self.for_items_with_return_dates
    joins(:item).where('items.LDATE > jobs.completed_at OR jobs.completed_at IS NULL')
  end

  # private

  # def photos_required_on_update
  #   photos = [:photo, :photo1, :photo2, :photo3, :photo4, :photo5, :photo6, :photo7, :photo8]

  #   photos.each do |photo|
  #     errors.add(photo, "must be attached after the job is updated") if self.send(photo).blank?
  #   end
  # end
end
