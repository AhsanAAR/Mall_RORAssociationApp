class ProductsController < ApplicationController
    def create
        @store = Store.find(params[:store_id])
        @product = @store.products.create(product_params)
        redirect_to store_path(@store)
      end
    
    private
    def product_params
        params.require(:product).permit(:product_name, :product_description, :category, :price, :order_date)
    end
end
