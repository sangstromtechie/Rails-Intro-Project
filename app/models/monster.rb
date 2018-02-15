class Monster < ApplicationRecord
  has_and_belongs_to_many :locations

  validates :name, presence: true
  validates :population, numericality: {only_integer: true}
end
