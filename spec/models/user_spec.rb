require 'rails_helper'

RSpec.describe EventAttendee, type: :model do
  context 'Checking event attendees and attended events' do
    before(:each) do
      @user = User.create(name: 'Captain Alex')
      @event = Event.create(name: 'Party #1', description: "Don't call your .......", creator_id: @user.id, starts_at: Time.now)
      @event2 = Event.create(name: 'Party #X2', description: 'You will get bounced without an IV', creator_id: @user.id, starts_at: Time.now)
    end
    it 'returns the number of events attended by @user, which is 2' do
      expect(@user.created_events.count).to eq(2)
    end

    it 'should have a username' do
      @user.name = nil
      expect(@user).to_not be_valid
    end
  end
end
