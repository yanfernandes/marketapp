class Api::V1::ProductsController < Api::V1::BaseController

  def index
    @products = Product.all
    response = {
      "delivery_tax" => "9",
      "items" => @products.as_json
    }
    render json: response
  end
end
