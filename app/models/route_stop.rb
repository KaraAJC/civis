class RouteStop < ActiveRecord::Base
  belongs_to :stop
  belongs_to :bus_route

  def route_with_most_stops

  end

  def stop_with_most_routes

  end
end
