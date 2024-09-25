class Plot < ApplicationRecord

  belongs_to :property
  has_many :plot_plants
  has_many :plants

end