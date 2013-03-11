class AddToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :first, :string
    add_column :rooms, :second, :string
    add_column :rooms, :third, :string
    add_column :rooms, :fourth, :string
    add_column :rooms, :fifth, :string
    add_column :rooms, :sixth, :string
    add_column :rooms, :seventh, :string
    add_column :rooms, :eighth, :string
    add_column :rooms, :day, :string
    
  end
end
