class CategoriesController < ApplicationController
  def show
    @categorie = Category.find(params[:id])

    respond_to do |format|
      format.html { redirect_to category_path(@categorie.id) }
      format.js {}
    end
  end
end
