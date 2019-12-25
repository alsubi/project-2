class ProductsController < ApplicationController
    before_action :authenticate_user! ,only: [:create ,:edit,:new,:update,:destroy]

    # def index 
    #  @products =Product.all
    # end
    def show
        @store = Store.find(params[:store_id])
        @product= Product.find(params[:id])
    end 
#
    def new
        @store = Store.find(params[:store_id])
        @product = @store.products.new
    end

    def create
        @store= Store.find(params[:store_id])
        @product= @store.products.create(product_params)
        redirect_to store_product_path(@store ,@product)
    end

    def edit
        @store= Store.find(params[:store_id])
        @product= Product.find(params[:id])
    end

    def update
        @store= Store.find(params[:store_id])
        @product= @store.products.update(product_params)
        redirect_to store_product_path(@store, @product)
    end

    def destroy
        @store= Store.find(params[:store_id])
        @product= Product.find(params[:id])
        @product.destroy
        redirect_to store_path(@store)       
    end

    private
    def product_params
        params.required(:product).permit(:name, :quantity,:price,:image)
    end

end