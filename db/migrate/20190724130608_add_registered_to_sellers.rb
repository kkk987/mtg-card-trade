class AddRegisteredToSellers < ActiveRecord::Migration[5.2]
  def change
    add_column :sellers, :registered, :boolean
  end
end
