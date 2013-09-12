class ProductsController < ApplicationController

  before_action :load_product, :except =>  [:index, :new, :create]

  def index
    @products = Product.all
  end

  def show
   #loads product
  end

  def new
    @product = Product.new
  end

  def edit
     #loads product
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to products_url
    else
      render :new  
    end
  end

  def update
    if @product.update_attributes(params[:product])
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path   
  end

  private

  def load_product
     @products = Product.find(params[:id])
  end

end
