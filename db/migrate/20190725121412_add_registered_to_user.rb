class AddRegisteredToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :registered, :boolean
  end
end
