class AddDetailsToReserves < ActiveRecord::Migration
  def change
    add_column :reserves, :roomname, :string
    add_column :reserves, :day_to_reserve, :date
    add_column :reserves, :strat_time, :string
    add_column :reserves, :finish_time, :string
    add_column :reserves, :tel, :string
    add_column :reserves, :email, :string
    add_column :reserves, :status, :boolean
  end
end