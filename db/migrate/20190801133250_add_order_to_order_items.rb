class AddOrderToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :order, foreign_key: {to_table: :orders}
  end
end
