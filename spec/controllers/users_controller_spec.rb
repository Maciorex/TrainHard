require 'rails_helper'

describe UsersController do
  let(:user) { User.create(email: "ecik@janoszka.pl", password: "password") }

    describe '#my_friends' do
      before { sign_in user }
      it 'returns 200' do
        get :my_friends
        expect(response.status).to be 200
      end
    end

    describe '#my_profile' do
      before { sign_in user }
      it 'returns 200' do
        get :my_profile
        expect(response.status).to be 200
      end
    end
end
