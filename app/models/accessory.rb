class Accessory < ApplicationRecord
  self.table_name = "ItemKitsAuto"

  belongs_to :item, foreign_key: "Num", primary_key: "NUM"
end
