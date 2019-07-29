class Stock < ApplicationRecord
  # belongs_to :cards
  belongs_to :seller, class_name: "User"
  
end
