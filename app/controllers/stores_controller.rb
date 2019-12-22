class StoresController < ApplicationController
    before_action :authenticate_user!

    def index  
        @stores = Store.all    
    end
    def new
        @store = Store.new
    end
    def show  
        @store = Store.find(params[:id])
    end
    def edit
         
        
    end
    def create
    end

    def update  
    end

    private 
    def store_params
        params.require(:store).permit(:name,:location)
    end

end