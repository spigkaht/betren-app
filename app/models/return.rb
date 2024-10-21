class Return < ApplicationRecord
  establish_connection :secondary
  after_create_commit :broadcast_return

  belongs_to :contract, foreign_key: 'contract_cntr', primary_key: 'CNTR'
  has_many :return_items
  has_many :return_accessories

  private

  def broadcast_return
    broadcast_append_to "returns",
                        partial: "returns/complete_return",
                        locals: { ret: self }
  end
end
