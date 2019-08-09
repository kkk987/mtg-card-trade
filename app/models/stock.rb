class Stock < ApplicationRecord
  # belongs_to :cards
  belongs_to :seller, class_name: "User"
  belongs_to :card, class_name: "Card"
  validates :quantity, presence: true
  validates :price, presence: true
  validates :condition, presence: true, inclusion: {in: ["Brand new", "Mint", "Lightly played", "Battle scarred", "Defeated"]}
  validates :seller_id, presence: true
  validates :card_id, presence: true
  has_many :order_items, foreign_key: "stock_id", dependent: :destroy

  # This method is used to create a new stock object
  # It returns the created stock on success
  # Otherwise, it returns false
  def self.create_stock(card_id, user_id, condition, price, quantity)
    # check if card_id and user_id are not nill
    if card_id && user_id
      stock = Stock.new(card_id: card_id, seller_id: user_id, condition: condition, price: price, quantity: quantity)
    end
    # save the stock object
    if stock.save
      return stock
    else
      return false
    end
  end


  # Sort stocks in latest to earliest order
  # And return the sorted order
  def self.sort_by_time(stock)
    return stock.order(:updated_at).reverse
  end

  # Sort a seller's stock by time order
  # It returns the sorted stock on success
  # Otherwise, it returns false
  def self.sort_my_stock(user_id)
    if user_id
      stock = Stock.where("seller_id = ?", user_id)
      # byebug
      return stock = Stock.sort_by_time(stock)
    else
      return false
    end
  end

  # Update stock attributes
  # It returns the stock on success
  # If no stock is found, it returns false
  def self.update_my_stock(stock_id, title, condition, price, quantity)
    stock = Stock.find(stock_id)
    return false if !stock
    stock.card_id = Card.return_card_id(title)
    stock.condition = condition
    stock.price = price
    stock.quantity = quantity
    return stock
  end
end
