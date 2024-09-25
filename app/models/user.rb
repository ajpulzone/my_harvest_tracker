class User < ApplicationRecord

  has_many :properties
  has_many :plots, through: :properties
  has_many :plot_plants, through: :plots
  has_many :plants, through: :plot_plants

  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
end