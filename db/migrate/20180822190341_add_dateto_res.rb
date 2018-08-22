class AddDatetoRes < ActiveRecord::Migration[5.2]
  def change
    change_table :reservations do |t|
      t.string :date
    end
  end
end
