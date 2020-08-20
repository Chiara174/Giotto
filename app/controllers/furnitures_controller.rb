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
    if params[:category].present?
      @furnitures = Furniture.where(furniture_type: params[:category])
    else
      @furnitures = Furniture.all
    end
  end


  private

  def params_furniture
    params.require(:furniture).permit(:title, :description, :price, :number_items, :furniture_type, :zipcode, :photo)
  end
end
