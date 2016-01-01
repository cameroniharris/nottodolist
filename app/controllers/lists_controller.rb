class ListsController < ApplicationController
    
    before_action :authenticate_user!, :only => [:new, :create]
    def index
        @lists = List.all
        
    end
    
    def new 
        @list = List.new
        
    end 
    

  def create
    current_user.lists.create(list_params)
    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
