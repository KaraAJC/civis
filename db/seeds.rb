# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'CSV'

test = CSV.foreach('/Users/karaajc/Projects/civis/db/test.csv', :headers => true) do |row|
  stop = Stop.create!(on_street: row['on_street'],
                  cross_street: row['cross_street'],
                     boardings: row['boardings'],
                    alightings: row['alightings'],
                      location: row['location'])

    row['routes'].to_s.split(',').each do |r|
      route = BusRoute.find_or_create_by!(route_name: r)
      RouteStop.create!( stop_id: stop.id, bus_route_id: route.id)
    end
  end

