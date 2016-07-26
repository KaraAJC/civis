class Stop < ActiveRecord::Base
  has_many :route_stops
  has_many :bus_routes, through: :route_stops

  def most_alightings
    self.where(alightings: self.maximum('alightings'))
  end

  def say_stop
    puts "here's the stop on #{self.on_street} and #{self.cross_street}"
  end
end
