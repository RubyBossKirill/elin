class RemoveDateCreateFromOrders < ActiveRecord::Migration[7.1]
  def change
    remove_column :orders, :date_create, :string
  end
end
