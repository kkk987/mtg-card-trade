class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      # t.references :card, foreign_key: true
      # t.references :seller, foreign_key: true
      t.integer :quantity
      t.decimal :price, precision: 10, scale: 2
      t.string :condition
      
      t.timestamps
    end
  end
end
