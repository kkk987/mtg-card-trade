class Card < ApplicationRecord

has_one_attached :face
  
  has_many :stocks, dependent: :destroy
  def self.search(term)
    where("LOWER(title) ILIKE :term", term: "%#{term.downcase}%")
  end
  
  def self.return_card_id(title)
    card_id = Card.where("title = ?", title).first.id
    if card_id
      return card_id
    end
  end
end