class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all 
  end

  def new
    @promotion = Promotion.new
  end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def create
    @promotion = Promotion.new(promotion_params)
    if @promotion.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def update
    @promotion = Promotion.find(params[:id])
    if @promotion.update(promotion_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  private
    def promotion_params
      params.require(:promotion).permit(:kind, :base, :value)
    end
end
