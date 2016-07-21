class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :on_street
      t.string :cross_street
      t.float :boardings
      t.float :alightings
      t.point :location
      t.references :route_stops
      t.timestamps null: false
    end
  end
end

# stop_id - ID
# on_street - Text
# cross_street  - Text
# boardings - float
# alightings  - float
# location - point(x,y)

# routes  - Array of Route Objects