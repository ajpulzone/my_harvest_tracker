require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "relationships" do
    it { should have_many :properties }
    it { should have_many(:plots).through(:properties) }
    it { should have_many(:plotplants).through(:plots) }
    it { should have_many(:plants).through(:plotplants) }
  end

  before(:each) do
    @user = User.create!(name: "Annie", email: "blondedogfarm@gmail.com")
  end
  
end