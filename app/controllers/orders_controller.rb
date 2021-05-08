class OrdersController < ApplicationController
  def index
    @orders = Order.all 
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to action: :index
    else
      render :new
    end
  end


  private

  def order_params
    params.require(:order).permit(:delivery_tax, :amount, :total)
  end

end