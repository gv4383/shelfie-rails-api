module Api
  class ProductsController < ApplicationController
    protect_from_forgery with: :null_session

    def show
      product = Product.find(params[:id])

      render json: ProductSerializer.new(product).serialized_json
    end

    def create
      product = Product.new(product_params)

      if product.save
        head :no_content
      else
        render json: { error: product.errors.messages }, status: 400
      end
    end

    def destroy
      product = Product.find(params[:id])

      if product.destroy
        head :no_content
      else
        render json: { error: product.errors.messages }, status: 404
      end
    end

    private

    def product_params
      params.require(:product).permit(:name, :price)
    end
  end
end
