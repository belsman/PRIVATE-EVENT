require 'rails_helper'

RSpec.describe Event, type: :model do
  # We can also test model validation

  context 'The Creator Association' do
    it 'returns a user as the creator of the Event' do
      user = User.create(name: 'Captain Alex')
      event = Event.create(name: 'Party #1', description: "Don't call your mama", creator_id: user.id, starts_at: Time.now)
      expect(event.creator).to eq(user)
    end
  end
end
