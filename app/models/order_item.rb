class OrderItem < ApplicationRecord
  belongs_to :stock, class_name: "Stock"
  belongs_to :order, class_name: "Order"
end
