class Plot < ApplicationRecord

  belongs_to :property
  has_many :plot_plants
  has_many :plants, through: :plot_plants

  validates_presence_of :name
  validates_presence_of :size
  validates_presence_of :property_id

end