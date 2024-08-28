class Job < ApplicationRecord
  establish_connection :secondary

  belongs_to :item, primary_key: 'NUM', foreign_key: 'item_num', class_name: 'Item'
  belongs_to :template

  scope :completed, -> { where.not(completed_at: nil) }
  scope :incomplete, -> { where(completed_at: nil) }

  def self.for_items_with_return_dates
    joins(:item).where('items.LDATE > jobs.completed_at OR jobs.completed_at IS NULL')
  end
end
