class Property < ApplicationRecord

  belongs_to :user
  has_many :plots
  has_many :plantplots, through: :plots
  has_many :plants, through: :plot_plants

  validates_presence_of :name
  validates_presence_of :zipcode
  validates_presence_of :user_id

end