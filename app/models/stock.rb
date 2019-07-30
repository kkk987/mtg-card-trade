class Stock < ApplicationRecord
  # belongs_to :cards
  belongs_to :seller, class_name: "User"
  belongs_to :card, class_name: "Card"
  validates :quantity, presence: true
  validates :price, presence: true
  validates :condition, presence: true, inclusion: {in: ["Brand new", "Mint", "Lightly played", "Battle scarred", "Defeated"]}
  validates :seller_id, presence: true
  validates :card_id, presence: true

  def self.sort_by_name
    
  end
end
