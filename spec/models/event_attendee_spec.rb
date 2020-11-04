require 'rails_helper'

RSpec.describe EventAttendee, type: :model do
  context 'Checking event attendees and attended events' do
    before(:each) do
      @user = User.create(name: 'Captain Alex')
      @user2 = User.create(name: 'Captain Rambo')
      @event = Event.create(name: 'Party #1', description: "Don't call your .......", creator_id: @user.id, starts_at: Time.now)
      @event2 = Event.create(name: 'Party #XX', description: 'You will get bounced without an IV', creator_id: @user2.id, starts_at: Time.now)
      @iv1 = @user.event_attendees.create(attended_event_id: @event.id)
      @iv2 = @user.event_attendees.create(attended_event_id: @event2.id)
      @iv3 = @user2.event_attendees.create(attended_event_id: @event.id)
      @iv4 = @user2.event_attendees.create(attended_event_id: @event2.id)
    end

    it 'returns the number of events attended by @user, which is 2' do
      expect(@user.attended_events.count).to eq(2)
    end

    it 'returns the number of events attended by @user, not to be 1' do
      expect(@user.attended_events.count).to_not eq(1)
    end

    it 'returns the number of events attended by @user2, which is 2' do
      expect(@user2.attended_events.count).to eq(2)
    end

    it 'returns the number of events attended by @user2, not to be 1' do
      expect(@user.attended_events.count).to_not eq(1)
    end

    it 'returns the number of users attending an @event, which is 2' do
      expect(@event.attendees.count).to eq(2)
    end

    it 'returns the number of users attending an @event2, which is 2' do
      expect(@event2.attendees.count).to eq(2)
    end
  end
end
