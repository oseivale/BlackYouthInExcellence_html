class Reservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :time
      t.integer :guests
    end
  end
end
