class AddSellerToStocks < ActiveRecord::Migration[5.2]
  def change
    add_reference :stocks, :seller, foreign_key: {to_table: :users}
  end
end
