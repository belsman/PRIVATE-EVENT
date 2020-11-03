class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_attendees, foreign_key: :attendee_id
  has_many :attendees, through: :event_attendees, source: :attendee

  scope :future_events, -> { where('starts_at > ?', Time.now) }
  scope :past_events, -> { where('starts_at <= ?', Time.now) }

end
