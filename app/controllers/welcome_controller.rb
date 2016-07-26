class WelcomeController < ApplicationController
  def index
    @routes = BusRoute.all
    @stops = Stop.all
  end
end
