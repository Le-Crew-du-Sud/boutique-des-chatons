class CategoriesController < ApplicationController

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
end
