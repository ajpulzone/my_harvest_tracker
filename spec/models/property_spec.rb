require 'rails_helper'

RSpec.describe Property, type: :model do
  
  describe "relationships" do
    it { should belong_to :user }
    it { should have_many(:plots) }
    it { should have_many(:plot_plants).through(:plots) }
    it { should have_many(:plants).through(:plot_plants) }
  end

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :zipcode}
    it {should validate_presence_of :user_id}
  end

  before(:each) do
    @user = User.create!(name: "Annie", email: "blondedogfarm@gmail.com")
    @property1 = @user.properties.create!(name: "Blonde Dog Farm", zipcode: "97701")
  end
  
end