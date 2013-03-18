class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|

      t.timestamps
    end
  end
end
