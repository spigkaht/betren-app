class Question < ApplicationRecord
  establish_connection :secondary

  belongs_to :template
  default_scope { order(:order) }

  enum :qtype, {
    bool: 'bool',
    text: 'text',
    num: 'num',
    img: 'img',
    alrt: 'alrt'
  }

  validates :qtype, presence: true
  validates :content, presence: true
end
