class AddManagerToServices < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :manager_id, :integer
    add_foreign_key :services, :clients, column: :manager_id
    add_index :services, :manager_id
  end
end
