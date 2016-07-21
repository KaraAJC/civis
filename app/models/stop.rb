class Stop < ActiveRecord::Base
  has_many :route_stops
  has_many :bus_routes, through: :route_stops
end
