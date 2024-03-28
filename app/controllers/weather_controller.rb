class WeatherController < ApplicationController
  def index
    @address = params[:address]
    @is_cached = false
  end
end
