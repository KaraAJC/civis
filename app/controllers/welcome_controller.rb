class WelcomeController < ApplicationController
  def index
    @routes = BusRoute.all
    @stops = Stop.all
    @busiest_boarding = Stop.most_boardings
    @busiest_alighting = Stop.most_alightings

    @hash = Gmaps4rails.build_markers(@stops) do |stop, marker|
        marker.lat stop.location[0]
        marker.lng stop.location[1]
        marker.title stop.say_stop
        marker.infowindow stop.say_stop
      end
  end
end
