class Stock < ApplicationRecord
  # belongs_to :cards
  belongs_to :seller, class_name: "User"
  belongs_to :card, class_name: "Card"
  validates :quantity, presence: true
  validates :price, presence: true
  validates :condition, presence: true, inclusion: {in: ["Brand new", "Mint", "Lightly played", "Battle scarred", "Defeated"]}
  validates :seller_id, presence: true
  validates :card_id, presence: true

  def self.create_stock(card_id, user_id, condition, price, quantity)
    # card_id = Card.where("title = ?", title).first.id
    # byebug
    if card_id && user_id
      stock = Stock.new(card_id: card_id, seller_id: user_id, condition: condition, price: price, quantity: quantity)
    end
    if stock.save
      return stock
    else
      return false
    end
  end

  def self.sort_by_time(stock)
    return stock.order(:updated_at).reverse
  end

  def self.sort_my_stock(user_id)
    if user_id
      stock = Stock.where("seller_id = ?", user_id)
      # byebug
      return stock = Stock.sort_by_time(stock)
    else
      return false
    end
  end
end
