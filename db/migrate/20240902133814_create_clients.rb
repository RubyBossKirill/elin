class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :mail
      t.integer :phone
      t.string :type_user
      t.string :avatar
      t.integer :balance
      t.integer :manager_id

      t.timestamps
    end
  end
end
