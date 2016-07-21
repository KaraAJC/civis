class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|

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