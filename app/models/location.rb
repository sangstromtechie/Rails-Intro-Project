class Location < ApplicationRecord
  has_and_belongs_to_many :monsters
  has_many :schools

  validates :name, presence: true
  validates :population, numericality: {only_integer: true}
end
