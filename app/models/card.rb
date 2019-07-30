class Card < ApplicationRecord
  def self.search(term)
    where("LOWER(title) ILIKE :term", term: "%#{term.downcase}%")
  end
end