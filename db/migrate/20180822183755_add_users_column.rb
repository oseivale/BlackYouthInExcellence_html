class AddUsersColumn < ActiveRecord::Migration[5.2]
  def change
    change_table :reservations do |t|
      t.string :user_id
    end
  end
end
