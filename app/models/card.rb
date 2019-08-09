class Card < ApplicationRecord

validates :title, presence: true
validates :card_type, presence: true
validates :color, presence: true
validates :rarity, presence: true
validates :converted_mana_cost, presence: true
validates :set, presence: true
validates :date, presence: true

has_one_attached :face
has_many :stocks, dependent: :destroy
  
# This method is a part of autocomplete feature
# It takes a string as input and find any card titles that contains the input
  def self.search(term)
    where("LOWER(title) ILIKE :term", term: "%#{term.downcase}%")
  end
  
# This method takes card title as input and returns the corresponding card id
  def self.return_card_id(title)
    card_id = Card.where("title = ?", title).first.id
    if card_id
      return card_id
    end
  end
end