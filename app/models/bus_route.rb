class BusRoute < ActiveRecord::Base
  has_many :route_stops
  has_many :stops, through: :route_stops

  validates :route_name, uniqueness: true

  def self.plot_route(bus)
     self.bus.stops.pluck(:location)
  end
end
