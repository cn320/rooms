class CreateRooms < ActiveRecord::Migration
  def up
    create_table :rooms do |t|
      t.string :room_id
      t.string :status
      t.integer :volume
      t.timestamps
    end
  end

  def down
     drop_table :rooms
  end
end
