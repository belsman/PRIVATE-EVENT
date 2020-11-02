class AddNameAndRefToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :name, :string
    add_column :events, :description, :text
    add_column :events, :creator_id, :interger, null: false, foreign_key: true
  end
end