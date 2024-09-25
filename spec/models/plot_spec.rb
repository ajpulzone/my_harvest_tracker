require 'rails_helper'

RSpec.describe Plot, type: :model do
  
  describe "relationships" do
    it { should belong_to :property }
    it { should have_many(:plot_plants) }
    it { should have_many(:plants).through(:plot_plants) }
  end

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :size}
    it {should validate_presence_of :property_id}
  end

  before(:each) do
    @user = User.create!(name: "Annie", email: "blondedogfarm@gmail.com")
    @property1 = @user.properties.create!(name: "Blonde Dog Farm", zipcode: "97701")
  end
  
end