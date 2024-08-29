class Question < ApplicationRecord
  establish_connection :secondary

  belongs_to :template

  enum :qtype, {
    bool: 'bool',
    text: 'text',
    num: 'num'
  }

  validates :qtype, presence: true
  validates :content, presence: true
end
