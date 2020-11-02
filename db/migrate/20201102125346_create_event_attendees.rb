class CreateEventAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :event_attendees do |t|
     add_column :events, :attendee_id, :integer, null: false, foreign_key: true
     add_column :events, :attended_event_id, :integer, null: false, foreign_key: true      
    end
  end
end
