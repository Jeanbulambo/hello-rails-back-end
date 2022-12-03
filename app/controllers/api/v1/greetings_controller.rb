class Api::V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.find(rand(1..6)).message
    render json: { greeting: @greeting }
  end
end
