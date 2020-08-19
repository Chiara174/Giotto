class FurnituresController < ApplicationController
  before_action :set_user, only: [:new, :create]
  
  def new
    @furniture = Furniture.new
  end

  def create
    @furniture = Furniture.new(params_furniture)
    @furniture.user = @user
    if @furniture.save
      redirect_to @user
    else
      render :new
    end
  end

  def index
    @furnitures = Furniture.all
  end




  private

  def set_user
    @user = User.find(params[:user_id])
  end


  def params_furniture
    params.require(:furniture).permit(:title, :description, :price, :number_items, :furniture_type, :zipcode)
  end
end
