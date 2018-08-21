class AddColumnToRestaurants < ActiveRecord::Migration[5.2]
    def change
      change_table :restaurants do |t|
        t.string :address
        t.string :neighborhood
        t.string :price_range
        t.string :menu
        t.string :time_slot
    end
  end
end
