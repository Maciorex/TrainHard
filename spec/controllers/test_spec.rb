require 'rails_helper'

describe UsersController do
 let(:user) { User.create(email: "lukas@lukas.com.pl", password: "password") }


   describe '#my_profile' do
     before { sign_in user}
     it 'returns 200' do
       get :my_profile
       expect(response.status).to be 200
     end
   end
end


describe DisciplinesController do
 let(:user) { User.create(email: "lukas@lukas.com.pl", password: "password") }


   describe '#index' do
     before { sign_in user}
     it 'returns 200' do
       get :index
       expect(response.status).to be 200
     end
   end
end
