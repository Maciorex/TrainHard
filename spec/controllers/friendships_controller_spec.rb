require "rails_helper"

describe FriendshipsController do
  let(:user) { User.create(email: "ecik@janoszka.pl", password: "password") }
#  describe "#add_friend" do
#    it 'returns 200' do
#      get :add_friend
#      expect(response.status).to be 200
#    end
#  end
  describe "#search" do
    before { sign_in user }
    it 'returns 200' do
      get :search
      expect(response.status).to be 200
    end
  end
#  describe "#destroy" do
#    it 'returns 200' do
#      get :destroy
#      expect(response.status).to be 200
#    end
#  end
end
