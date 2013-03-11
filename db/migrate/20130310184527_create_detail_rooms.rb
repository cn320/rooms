class CreateDetailRooms < ActiveRecord::Migration
  def up
    create_table :detail_rooms, {:id=>false} do |t|
      t.string :roomname , :null => false ,:primary_key => true
      t.integer :amount
      t.timestamps
    end
   
  end

  def down
    drop_table :detail_rooms
  end
end
