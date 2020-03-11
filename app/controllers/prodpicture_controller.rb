class ProdpictureController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    puts "#{@item}".red
    @item.prodpicture.attach(params[:prodpicture])
    redirect_to(item_path(@item))
  end

  def destroy
    @prodpicture = ActiveStorage::Attachment.find(params[:id])
    @prodpicture.purge
    redirect_back(fallback_location: request.referer)
  end
end
