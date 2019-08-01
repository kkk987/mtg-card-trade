class Order < ApplicationRecord
  belongs_to :buyer, class_name: "User"
  has_many :order_items, foreign_key: "order_id", dependent: :destroy
end
