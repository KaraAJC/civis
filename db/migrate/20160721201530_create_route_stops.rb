class CreateRouteStops < ActiveRecord::Migration
  def change
    create_table :route_stops do |t|
      t.belongs_to :stop
      t.belongs_to :bus_route
      t.timestamps null: false
    end
  end
end

# bus_route_id
# stop_id
