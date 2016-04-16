class Users::ItemsController < ApplicationController
  before_action :get_user
  
  def index
    @items = @user.items
  end
  
 def create
   @new_item = @user.items.new(item_params)
   
   if @new_item.save
     redirect_to user_items_path(@user), notice: 'Item saved successfully'
   else
     redirect_to user_items_path(@user), notice: 'Item failed to save'
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
