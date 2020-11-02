class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attendee, through: :event_attendees
  has_many :event_attendees, foreign_key: :attendee_id
end
