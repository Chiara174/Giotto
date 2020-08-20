class FurnituresController < ApplicationController

  def new
    @furniture = Furniture.new
  end

  def create
    @furniture = Furniture.new(params_furniture)
    @furniture.user = current_user
    if @furniture.save!
      redirect_to furniture_path(@furniture)
    else
      render :new
    end
  end

  def show
    @furniture = Furniture.find(params[:id])
  end

  def index
    @furnitures = Furniture.all
    @furnitures = Furniture.geocoded

    @markers = @furnitures.map do |furniture|
      {
        lat: furniture.latitude,
        lng: furniture.longitude
      }
    end  
  end


  private

  def params_furniture
    params.require(:furniture).permit(:title, :description, :price, :number_items, :furniture_type, :zipcode, :photo, :address)
  end
end
