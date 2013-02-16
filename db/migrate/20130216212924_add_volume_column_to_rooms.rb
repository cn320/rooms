class AddVolumeColumnToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :volume, :integer
  end
end
