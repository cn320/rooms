class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|

      t.timestamps
    end
    add_column :reserves, :name , :string
    add_column :reserves, :room_id, :string
  end
end
