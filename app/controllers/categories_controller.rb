class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to index_path
  end

  def show
    @categorie = Category.find(params[:id])
    respond_to do |format|
      format.html { redirect_to "/" }
      format.js {}
    end
  end
  
  def cu_admin
    unless current_user.is_admin == true
      flash[:alert] = "Vous n'etes pas l'admin de cet événement."
      redirect_back(fallback_location: request.referer)
    end
  end
end
