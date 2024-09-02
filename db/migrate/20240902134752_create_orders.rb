class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :date_create
      t.string :date_payment

      t.timestamps
    end
  end
end
