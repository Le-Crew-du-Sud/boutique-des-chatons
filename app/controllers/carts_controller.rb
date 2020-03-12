class CartsController < ApplicationController
  before_action :authenticate_user!

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
  end

  def edit
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to cart_path
  end

end
