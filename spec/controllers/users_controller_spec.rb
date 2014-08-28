require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "Users#signup" do
    it "creates a new user" do
      expect {
        post :new, user:FactoryGirl.attributes_for(:user)
      }.to change(User, :count)
    end
  end
end
