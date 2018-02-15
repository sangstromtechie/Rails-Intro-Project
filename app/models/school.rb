class School < ApplicationRecord
  belongs_to :location
  has_many :witchers

  validates :name, presence: true
end
