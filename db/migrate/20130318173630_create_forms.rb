class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :position
      t.string :name
      t.string :surname
      t.string :institution
      t.string :tel
      t.string :email
      t.string :roomtype
      t.string :roomname
      t.date :date_to_reserve
      t.string :start_time
      t.string :finish_time
      t.string :because
      t.string :subject
      t.integer :amount_of_people
      t.string :require_tool

      t.timestamps
    end
  end
end
