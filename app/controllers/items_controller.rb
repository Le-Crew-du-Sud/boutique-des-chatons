class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  def index
    @itemvar = 1
    @item = Item.with_attached_itempicture.find(@itemvar)
  end

  def show
    # @item = Item.find(params[:id]) #remplacé par la ligne ci dessous
    @item = Item.with_attached_itempicture.find(params[:id])

  end

  def create
    puts params[:title], params[:description]
    @item = Item.new(title: params[:title], description: params[:description], price: params[:price],image_url: params[:price], category_id: params[:category_id])
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
    @category_array = Category.all.map { |category| [category.name, category.id] }
  end

  def edit
    @category_array = Category.all.map { |category| [category.name, category.id] }
    @item = Item.with_attached_itempicture.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(title: params[:title], description: params[:description], price: params[:price], category_id: params[:category_id])
    redirect_to @item
    else
      render :edit
    end
  end


  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to "/"
  end
end
