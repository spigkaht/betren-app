class Question < ApplicationRecord
  establish_connection :secondary

  belongs_to :template
  default_scope { order(:order) }

  enum :qtype, {
    bool: 'bool',
    text: 'text',
    num: 'num',
    img: 'img',
    alrt: 'alrt',
    photo: 'photo'
  }

  validates :qtype, presence: true
end
