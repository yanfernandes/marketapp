class Api::V1::OrdersController < Api::V1::BaseController

  def create
    order = Order.new(order_params)
    order.save
    render json: {message: "Pedido salvo"}, status: :ok
  end

 private

  def order_params
    params.require(:order).permit(:delivery_tax, items_attributes: [ :product_id, :amount ])
  end

end

