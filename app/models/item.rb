class Item < ActiveRecord::Base
  belongs_to :user
  def index
    @items = Item.all
  end
  def create
    @items = current_user.items
  end
  
  def new
    @items = Item.new
  end
   
end
