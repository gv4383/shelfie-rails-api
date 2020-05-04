module Api
  class InventoryController < ApplicationController
    def index
      inventory = Product.all

      render json: ProductSerializer.new(inventory).serialized_json
    end
  end
end
