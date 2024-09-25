require 'rails_helper'

RSpec.describe Plant, type: :model do
  
  describe "relationships" do
    it { should have_many :plot_plants }
    it { should have_many(:plots).through(:plot_plants) }
  end

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :type}
    it {should validate_presence_of :purchase_date}
    it {should validate_presence_of :bloom_start_date}
    it {should validate_presence_of :bloom_end_date}
    it {should validate_presence_of :harvest_start_date}
    it {should validate_presence_of :harvest_end_date}
    it {should validate_presence_of(:description).allow_blank }
  end

  before(:each) do
    @user = User.create!(name: "Annie", email: "blondedogfarm@gmail.com")
    @property1 = @user.properties.create!(name: "Blonde Dog Farm", zipcode: "97701")
  end
  
end