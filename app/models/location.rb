class Location < ApplicationRecord
  has_many :witchers, :habitats
end
