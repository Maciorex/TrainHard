require 'rails_helper'

describe DisciplinesController do
  let(:user) { User.create(email: "ecik@janoszka.pl", password: "password") }
  let(:admin) { User.create(email: "podstawek@grzesio.pl", password: "password", admin: true)}
  let(:discipline) { Discipline.create(name: "bierki") }

  describe '#index' do
    before { sign_in user }

    it 'returns 200' do
      get :index
      expect(response.status).to be 200
    end

    it 'calls all method on Discipline model' do
      expect(Discipline).to receive(:all)
      get :index
    end
  end

  describe '#new' do
    subject { get :new }
    before { sign_in admin }

    it "instantiates Discipline" do
      expect(Discipline).to receive(:new)
      subject
    end

    it "returns 200" do
      subject
      expect(response.status).to be 200
    end
  end
end
