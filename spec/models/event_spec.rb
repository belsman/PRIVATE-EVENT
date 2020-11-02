require 'rails_helper'

RSpec.describe Event, type: :model do
    #We can also test model validation

    context "The Creator Association" do
        it 'returns a user as the creator of the Event' do
            user = User.create(name: "Captain Alex")
            event = Event.create(name: "Party #1", description: "Don't call your mama", creator_id: user.id, starts_at: Time.now)
            expect(event.creator).to eq(user)
        end

        it 'throws an error when an #talk is invoked' do
            user = User.create(name: "Captain Alex")
            event = Event.create(name: "Party #1", description: "Don't call your mama", creator_id: user.id, starts_at: Time.now)
            expect { user.talk }.to raise_error(NoMethodError)
        end
    end
end