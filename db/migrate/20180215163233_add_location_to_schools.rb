class AddLocationToSchools < ActiveRecord::Migration[5.1]
  def change
    add_reference :schools, :location, foreign_key: true
  end
end
