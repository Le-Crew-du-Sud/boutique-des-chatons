class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  def index

  end

  def show
    @item = Item.with_attached_prodpicture.find(params[:id])
  end

  def create
    puts params[:title], params[:description]
    @item = Item.new(title: params[:title], description: params[:description], price: params[:price],image_url: params[:price])
    if @item.save
      puts "Un produit a été créé"
      flash[:notice] = "Un produit a été créé."
      redirect_to items_path
    else
      puts "Erreur dans l'enregistrement.Ton produit a été refusé"
      flash[:alert] = "Erreur dans l'enregistrement.Ton produit a été refusé"
      render 'new'
    end
  end

  def new
  end

  def edit
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to index_path
  end
end
