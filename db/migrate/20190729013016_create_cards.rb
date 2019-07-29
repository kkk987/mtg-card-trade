class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :card_type
      t.string :color
      t.string :rarity
      t.integer :converted_mana_cost
      t.string :set
      t.date :date

      t.timestamps
    end
  end
end
