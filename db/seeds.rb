# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'CSV'

CSV.foreach('', :headers => true) do |row|
  Stop.create(on_street: row[:on_street],
              cross_street: row[:cross_street],
              boardings: row[:boardings],
              alightings: row[:alightings],
              location: row[:location]
              row[:routes].each do |r|
                Route_stop.create(bus_route:find_or_create_by(route_name: r), Stop)
              end
    )
end

