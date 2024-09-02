class AddObjectClientToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :object_client, :string
  end
end
