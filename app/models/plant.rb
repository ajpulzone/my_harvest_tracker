class Plant < ApplicationRecord

  belongs_to :plot_plant
  has_many :plots, through: :plot_plants
end