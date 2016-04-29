require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end
  context "member user doing CRUD on items they own" do
     describe "DELETE destroy" do
       it "deletes the item" do
         delete :destroy, users_item.id: users_item.id, id: item.id
         delete :destroy, format: :js, users_item.id: users_item.id, id: item.id
         count = Item.where({id: users_item.id}).count
         expect(count).to eq 0
       end

       it "redirects to the users show view" do
         delete :destroy, users_item.id: users_item.id, id: item.id
         expect(response).to redirect_to users_item_path
         
       it "returns http success" do
         delete :destroy, format: :js, users_item.id: users_item.id, id: item.id
         expect(response).to have_http_status(:success)
       end
     end


end
