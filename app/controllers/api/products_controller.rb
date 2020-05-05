module Api
  class ProductsController < ApplicationController
    def show
      product = Product.find(params[:id])

      render json: ProductSerializer.new(product).serialized_json
    end

    private

    def product_params
      params.require(:produc).permit(:name, :price)
    end
  end
end
