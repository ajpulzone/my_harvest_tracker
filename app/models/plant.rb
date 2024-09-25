class Plant < ApplicationRecord

  has_many :plot_plants
  has_many :plots, through: :plot_plants

  validates_presence_of :name
  validates_presence_of :type
  validates_presence_of :purchase_date
  validates_presence_of :bloom_start_date
  validates_presence_of :bloom_end_date
  validates_presence_of :harvest_start_date
  validates_presence_of :harvest_end_date
  validates_presence_of :description, allow_blank: true

end