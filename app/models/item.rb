class Item < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  default_scope { order('updated_at DESC') }
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
