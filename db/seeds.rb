# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# cards = Card.create([{title: 'string', card_type: 'string', color: 'string', rarity: 'string', converted_mana_cost: 'integer', set: 'string', date: 'date')

Card.destroy_all
cards = Card.create(
    {
        title: 'Sol Ring',
        card_type: 'Artifact',
        color: 'Colourless',
        rarity: 'Uncommon',
        converted_mana_cost: 1,
        set: 'Commander 2018',
        date: DateTime.new(2018,8,10)
    })
cards = Card.create(
    {
        title: 'Counterspell',
        card_type: 'Instant',
        color: 'Blue',
        rarity: 'Common',
        converted_mana_cost: 2,
        set: 'Masters 25',
        date: DateTime.new(2018,3,16)
    })
cards = Card.create(
    {
        title: 'Cultivate',
        card_type: 'Sorcery',
        color: 'Green',
        rarity: 'Common',
        converted_mana_cost: 3,
        set: 'Commander 2018',
        date: DateTime.new(2018,8,10)
    })
cards = Card.create(
    {
        title: 'Nicol Bolas, Dragon-God',
        card_type: 'Planeswalker',
        color: 'Blue, Black, Red',
        rarity: 'Mythic Rare',
        converted_mana_cost: 5,
        set: 'War of The Spark',
        date: DateTime.new(2019,5,03)
    })
cards = Card.create(
    {
        title: 'Cyclonic Rift',
        card_type: 'Instant',
        color: 'Blue',
        rarity: 'Rare',
        converted_mana_cost: 2,
        set: 'Moder Masters 2017',
        date: DateTime.new(2017,3,17)
    })
cards = Card.create(
    {
        title: 'Smothering Tithe',
        card_type: 'Enchantment',
        color: 'White',
        rarity: 'Rare',
        converted_mana_cost: 4,
        set: 'Ravnica Allegiance',
        date: DateTime.new(2019,1,25)
    })
cards = Card.create(
    {
        title: 'Anguished Unmaking',
        card_type: 'Instant',
        color: 'White, Black',
        rarity: 'Rare',
        converted_mana_cost: 3,
        set: 'Shadows over Innistrad',
        date: DateTime.new(2016,4,8)
    })
cards = Card.create(
    {
        title: "Wolf of Devil's Breach",
        card_type: 'Creature',
        color: 'Red',
        rarity: 'Mythic Rare',
        converted_mana_cost: 5,
        set: 'Shadows over Innistrad',
        date: DateTime.new(2016,4,8)
    })
cards = Card.create(
    {
        title: 'Demonic Tutor',
        card_type: 'Sorcery',
        color: 'Black',
        rarity: 'Rare',
        converted_mana_cost: 2,
        set: 'Ultimate Masters',
        date: DateTime.new(2018,12,07)
    })
cards = Card.create(
    {
        title: 'Utter End',
        card_type: 'Instant',
        color: 'Red, White',
        rarity: 'Rare',
        converted_mana_cost: 4,
        set: 'Commander 2018',
        date: DateTime.new(2018,8,10)
    })