require "rails_helper"
require "faker"

RSpec.describe "Welcome Page" do

  before :each do
    visit "/"
  end

  describe "As a user who is logged out/has not created an account" do
    
    it "Has a header that says Harvest Tracker to let the user know they have landed on the home page" do
      expect(page).to have_content("Harvest Tracker")
    end

    it "Has a section for a user to login" do
      within("#user-login") do
        expect(page).to have_field("User Name", type: "name")
        expect(page).to have_field("Email", type: "email")
        expect(page).to have_button("Login")
      end
    end

    it "Has a section for a new user to create a new profile" do
      within("#new-user") do
        expect(page).to have_field("User Name", type: "name")
        expect(page).to have_field("Email", type: "email")
        expect(page).to have_button("Create New User")
      end
    end
  end

  describe "When a current user logs in" do

  end

  describe "when a current user attempts to use their current information to create a new user (email is not unique)" do

  end
  # describe "When the create new user button is clicked" do
  #   it "Will take the user to the create user profile page" do

  #   end
  # end

  # describe "When the login button is clicked" do
  #   it "Will take the user to the login page" do

  #   end
  # end

end