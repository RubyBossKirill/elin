class AddPriceServiceToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :price_service, :string
  end
end
