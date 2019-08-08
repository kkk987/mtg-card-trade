class Order < ApplicationRecord
  validates :buyer_id, presence: true
  validates :total, presence: true
  belongs_to :buyer, class_name: "User"
  has_many :order_items, foreign_key: "order_id", dependent: :destroy

  def self.total(items)
    sum = 0
    items.each do |item|
      sum += item.quantity * item.stock.price
    end
    return sum
  end
end
