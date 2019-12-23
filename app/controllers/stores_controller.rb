class StoresController < ApplicationController

    def index  
        @stores = current_user.stores.all    
    end
    def new
        @store = Store.new
    end
    def show  
        @store = Store.find(params[:id])
    end
    def edit
         @store = Store.find(params[:id])

    end
    def create
        @user =current_user
        @store =@user.stores.create(store_params)
        redirect_to  store_path(@store)
    end

    def update 
        @user =current_user
        @store =@user.stores.update(store_params)
        redirect_to store_path(@store)
    end
    def destroy
        @user =current_user
        @store =@user.stores.find(params[:id])
        @store.destroy
        redirect_to stores_path
 
        
    end
    private 
    def store_params
        params.require(:store).permit(:name,:location,:image)
    end

end