class CreateDetailRooms < ActiveRecord::Migration
  def up
    create_table :detail_rooms do |t|
      t.string :roomname , :null => false 
      t.integer :amount
      t.string :room_type
      t.timestamps
    end
   
  end

  def down
    drop_table :detail_rooms
  end
end
