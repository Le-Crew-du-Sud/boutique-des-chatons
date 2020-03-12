class ItempictureController < ApplicationController
  before_action :authenticate_user!
  before_action :cu_admin
  
  def create
    @item = Item.find(params[:item_id])
    @item.itempicture.attach(params[:itempicture])
    redirect_to(item_path(@item))
  end


  def destroy
    @itempicture = ActiveStorage::Attachment.find(params[:id])
    @itempicture.purge
    redirect_back(fallback_location: request.referer)
  end

  def cu_admin
    unless current_user.is_admin == true
      flash[:alert] = "Vous n'etes pas l'admin de cet événement."
      redirect_back(fallback_location: request.referer)
    end
  end
end
