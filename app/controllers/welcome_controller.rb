class WelcomeController < ApplicationController

  def index
    @featured = Auto.where(:featured => true)
  end

  def contact
  end

  def show
  end

 # Never trust parameters from the scary internet, only allow the white list through.
    def auto_params
      params.require(:auto).permit(:make, :model, :year, :trim, :vin, :auto_img, :image, :auto_description, :condition, :mileage, :list_price, :price_sold, :sold, :featured, :purchase_price, :purchase_date, :price_sold, :date_sold, :sold_by, :user_id)
    end


end
