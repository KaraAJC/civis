class Stop < ActiveRecord::Base
  has_many :route_stops
  has_many :bus_routes, through: :route_stops

  def self.most_alightings
    self.all.find_by(alightings: self.maximum('alightings'))
  end

  def self.most_boardings
    self.all.find_by(boardings: self.maximum('boardings'))
  end

  def say_stop
    "The stop on #{self.on_street} and #{self.cross_street}"
  end
end
