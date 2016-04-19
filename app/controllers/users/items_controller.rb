class Users::ItemsController < ApplicationController
  before_action :get_user
  
  def index
    @items = @user.items
  end
  
 def create
    @new_item = @user.items.new(item_params)
    @user.items = current_user.items
     if @new_item.save
             flash[:notice] = "Item saved successfully."
     else
             flash[:alert] = "Item failed to save."
   end
     respond_to do |format|
       format.html
       format.js
     end

 end
  def show
    @items = current_user.items
    @user = current_user
    render :show
  end
  def new
    @items = Item.new
    redirect_to items_path
  end
  def destroy
     @user = User.find(params[:user_id])
     @items = @user.items.find(params[:id])
     if @item.destroy
       flash[:notice] = "Item was deleted successfully."
     else
       flash[:alert] = "Item couldn't be deleted. Try again."
     end
     respond_to do |format|
       format.html
       format.js
     end

  end
  def edit
  end
  
  private
  def get_user
    @user = User.find(params[:user_id])
  end
  
  def item_params
    params.require(:item).permit(:name)
  end
end
