class PlotPlant < ApplicationRecord

  belongs_to :plot
  belongs_to :plant

  validates_presence_of :plot_id
  validates_presence_of :plant_id

end