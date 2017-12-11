class WelcomeController < ApplicationController

  def index
    @autos = Auto.all
  end

end
