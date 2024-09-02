class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :type_service
      t.integer :price

      t.timestamps
    end
  end
end
