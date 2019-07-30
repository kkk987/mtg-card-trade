class AddCardToStocks < ActiveRecord::Migration[5.2]
  def change
    add_reference :stocks, :card, foreign_key: {to_table: :cards}
  end
end
