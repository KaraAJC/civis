class CreateBusRoutes < ActiveRecord::Migration
  def change
    create_table :bus_routes do |t|
      t.string :route_name
      t.timestamps null: false
    end
  end
end



# route_id
# route_name