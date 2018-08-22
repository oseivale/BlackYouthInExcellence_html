class AddOpenandClosetoRestaurants < ActiveRecord::Migration[5.2]
  def change
    change_table :restaurants do |t|
      t.integer :open
      t.integer :close
    end
    remove_column :restaurants, :time_slot, :string
  end
end
