require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "relationships" do
    it { should have_many :properties }
    it { should have_many(:plots).through(:properties) }
    it { should have_many(:plot_plants).through(:plots) }
    it { should have_many(:plants).through(:plot_plants) }
  end

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :email}
    it {should validate_uniqueness_of :email}
  end

  before(:each) do
    @user = User.create!(name: "Annie", email: "blondedogfarm@gmail.com")
  end
  
end