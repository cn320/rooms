class AddSectionTimeToReserve < ActiveRecord::Migration
  def change
    add_column :reserves, :section, :string
  end
end
