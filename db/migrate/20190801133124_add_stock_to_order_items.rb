class AddStockToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :stock, foreign_key: {to_table: :stocks}
  end
end
