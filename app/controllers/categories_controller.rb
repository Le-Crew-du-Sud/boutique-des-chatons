class CategoriesController < ApplicationController
def index
end
  def show
    @categorie = Category.find(params[:id])

    respond_to do |format|
      format.html { redirect_to "/" }
      format.js {}
    end
  end
end
