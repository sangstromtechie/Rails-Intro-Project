class CreateJoinTableLocationsMonsters < ActiveRecord::Migration[5.1]
  def change
    create_join_table :locations, :monsters do |t|
      t.index [:location_id, :monster_id]
      t.index [:monster_id, :location_id]
    end
  end
end
