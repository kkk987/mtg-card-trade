class OrderItem < ApplicationRecord
  validates :order_id, presence: true
  validates :quantity, presence: true
  validates :stock_id, presence: true
  belongs_to :stock, class_name: "Stock"
  belongs_to :order, class_name: "Order"
end
