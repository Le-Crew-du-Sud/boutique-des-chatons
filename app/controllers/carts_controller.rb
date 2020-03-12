class CartsController < ApplicationController

  def create
    puts ">>>>>>>>>>>>> #{params[:unit_price]}".red
    @cart = Cart.create(
      user_id: params[:user_id],
      item_id: params[:item_id],
      quantity: params[:quantity],
      unit_price: params[:unit_price]
      )
    puts ">>>>>> #{@cart.errors.messages}".red
    redirect_back(fallback_location: request.referer)

  end

  def show
    @cart = Cart.where(user_id: current_user.id).to_a
    puts ">>>> cart id : #{@cart.id}".red
  end

  def edit
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to carts_show_path
  end

end
