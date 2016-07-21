class RouteStop < ActiveRecord::Base
  belongs_to :stop
  belongs_to :bus_route
end
