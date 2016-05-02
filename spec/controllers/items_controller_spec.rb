require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "GET #create" do
    it "renders #show view after item is created" do
      get :create
      expect(response).to render(:show)
    end
  end
  describe "DELETE #destroy" do
    it "deletes the item" do
         delete :destroy, format: :js, users_item.id: users_item.id, id: item.id
         count = Item.where({id: users_item.id}).count
         expect(count).to eq 0
    end
  end
  describe "#show"
    it "redirects to the users #show view" do
         delete :destroy, users_item.id: users_item.id, id: item.id
         expect(response).to redirect_to users_item_path
    end
    it "returns http success" do
         delete :destroy, format: :js, users_item.id: users_item.id, id: item.id
         expect(response).to have_http_status(:success)
    end
  end

end
