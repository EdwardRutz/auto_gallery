class WelcomeController < ApplicationController

  def index
    @featured = Auto.where(:featured => true)
    # @featured = Auto.all
    # @autos = Auto.all
  end

  def contact
  end

end
