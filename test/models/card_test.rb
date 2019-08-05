require 'rails_helper'

describe Card, :type => :model do
  it "is valid with valid attributes" do
    expect(Card.new(title: 'Scute Mob', card_type: 'creature', color: 'Green', rarity: 'Rare', converted_mana_cost: '1', set: 'Commander 2018', date: DateTime.new(2018,8,10))).to be_valid
  end

  it "is not valid without a title" do
    title = Card.new(title: nil)
    expect(title).to_not be_valid
  end

  it "is not valid without a card type" do
    card_type = Card.new(card_type: nil)
    expect(card_type).to_not be_valid
  end


  it "is not valid without a colour" do
    colour = Card.new(color: nil)
    expect(colour).to_not be_valid
  end

  it "is not valid without a rarity" do
    rarity = Card.new(rarity: nil)
    expect(rarity).to_not be_valid
  end

  it "is not valid without a converted mana cost" do
    converted_mana_cost = Card.new(converted_mana_cost: nil)
    expect(converted_mana_cost).to_not be_valid
  end

  it "is not valid without a set" do
    set = Card.new(set: nil)
    expect(set).to_not be_valid
  end

  it "is not valid without a release date" do
    release_date= Card.new(date: nil)
    expect(release_date).to_not be_valid
  end
  
end
