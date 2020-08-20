class DashboardController < ApplicationController
  before_action :set_user, only: [:new, :create]



    private

  def set_user
    @user = User.find(params[:user_id])
  end
end
