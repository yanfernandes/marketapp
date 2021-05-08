class ProductsController < ApplicationController
  before_action :promotions, only: [:new, :edit]
  
  def index
    @products = Product.all 
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
    @promotion = @product.promotion
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:description, :stock, :barcode, :price, :promotion_id)
  end

  def promotions
    @promotions = Promotion.all
  end
end