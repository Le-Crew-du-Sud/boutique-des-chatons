class CartsController < ApplicationController

  def create
    puts ">>>>>>>>>>>>> #{params[:user_id]}".red
    @cart = Cart.create(
      user_id: params[:user_id],
      item_id: params[:item_id],
      quantity: params[:quantity],
      unit_price: params[:unit_price]
      )
      redirect_back(fallback_location: request.referer)

  end

  def show
  end

  def edit
  end

  def destroy
  end

end
