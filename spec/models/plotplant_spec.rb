require 'rails_helper'

RSpec.describe PlotPlant, type: :model do
  
  describe "relationships" do
    it { should belong_to :plot }
    it { should belong_to :plant }
  end

  describe 'validations' do
    it {should validate_presence_of :plot_id}
    it {should validate_presence_of :plant_id}
  end

  before(:each) do
    @user = User.create!(name: "Annie", email: "blondedogfarm@gmail.com")
    @property1 = @user.properties.create!(name: "Blonde Dog Farm", zipcode: "97701")
  end
  
end