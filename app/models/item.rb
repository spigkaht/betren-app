class Item < ApplicationRecord
  self.table_name = "ItemFile"

  has_many :accessories, foreign_key: "Num", primary_key: "NUM"
  has_many :contract_items, foreign_key: "ITEM", primary_key: "NUM"
  has_many :jobs

  attr_accessor :min_sum

  def calculate_min_sum
    self.min_sum = (self.QTY.to_i || 0) - (self.QYOT.to_i || 0)
  end

  default_scope { where(Inactive: false) }
end
