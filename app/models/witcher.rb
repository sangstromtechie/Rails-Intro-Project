class Witcher < ApplicationRecord
  belongs_to :school

  validates :name, presence: true
  validates :age, numericality: {only_integer: true}
end
