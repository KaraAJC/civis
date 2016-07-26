class WelcomeController < ApplicationController
  def index
    @routes = BusRoute.all
    @stops = Stop.all
    @busiest_boarding = Stop.most_boardings
    @busiest_alighting = Stop.most_alightings
  end
end
