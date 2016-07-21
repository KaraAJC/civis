class CreateRouteStops < ActiveRecord::Migration
  def change
    create_table :route_stops do |t|

      t.timestamps null: false
    end
  end
end

# bus_route_id
# stop_id
