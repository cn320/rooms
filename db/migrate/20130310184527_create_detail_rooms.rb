class CreateDetailRooms < ActiveRecord::Migration
  def change
    create_table :detail_rooms do |t|
      t.string :roomname
      t.integer :amount
      t.timestamps
    end
  end
end
