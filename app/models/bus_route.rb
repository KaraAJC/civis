class BusRoute < ActiveRecord::Base
  has_many :route_stops
  has_many :stops, through: :route_stops

  validates :route_name, uniqueness: true

end
