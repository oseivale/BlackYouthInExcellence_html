class AddForeignKeyReservations < ActiveRecord::Migration[5.2]
  def change
    change_table :reservations do |t|
      t.integer :restaurant_id
    end
  end
end
