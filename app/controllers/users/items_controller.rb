class Users::ItemsController < ApplicationController
  before_action :get_user
  
  def index
    @item = current_user.items
  end
  
 def create
    @user = current_user
    @item = @user.items.new(item_params)
        flash[:notice] = "Item was successfully created." if @item.save
        #respond_with(@new_item)
      respond_to do |format|
        format.html {redirect_to @user}
        format.js #{redirect_to @user}
      end
 end
 
  def show
    @item = current_user.items
    @user = current_user
        render :show
  end
  
  def new
    @user = current_user
    @item = Item.new
        #redirect_to @user
      respond_to do |format|
        format.html {redirect_to @user}
        format.js #{redirect_to @user}
     end
  end
  
  
  def destroy
      @item = @user.items.find(params[:id])
        if @item.destroy
            flash[:notice] = "Item was deleted successfully."
            #redirect_to @user
        else
            flash[:alert] = "Item couldn't be deleted. Try again."
            #redirect_to @user
        end
      respond_to do |format|
        format.html {redirect_to @user}
        format.js #{redirect_to @user}
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
