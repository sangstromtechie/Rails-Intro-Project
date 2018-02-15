class AddSchoolToWitchers < ActiveRecord::Migration[5.1]
  def change
    add_reference :witchers, :school, foreign_key: true
  end
end
