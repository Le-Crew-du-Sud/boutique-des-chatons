class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def index
    redirect_to index_path
  end

  def cu_admin
    unless current_user.is_admin == true
      flash[:alert] = "Vous n'etes pas l'admin de cet événement."
      redirect_back(fallback_location: request.referer)
    end
  end
end
