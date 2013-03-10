class AddSectionTimeToReserve < ActiveRecord::Migration
  def change
    add_column :reserves, :section, :string
    add_column :reserves, :time, :integer
  end
end
