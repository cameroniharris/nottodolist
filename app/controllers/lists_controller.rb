class ListsController < ApplicationController
    
    before_action :authenticate_user!, :only => [:new, :create, :edit]
    def index
        if user_signed_in?
            @lists = current_user.lists
        else
            redirect_to new_user_session_path 
            
        end
        
    end
    
    def new 
        @list = List.new
    end 
    

  def create
    if current_user.lists.count < 4 
        current_user.lists.create(list_params)
        redirect_to lists_path
    else 
        redirect_to root_url, :notice => "message here"
    end
  end
  
  def show
      @list = List.find(params[:id])
  end 
  
  def edit
      @list = List.find(params[:id])

  end
  
  def destroy
      @list = List.find(params[:id])
      @list.destroy
      redirect_to root_path
  end
  
  def update
      @list = List.find(params[:id])
      @list.update_attributes(list_params)
      redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
