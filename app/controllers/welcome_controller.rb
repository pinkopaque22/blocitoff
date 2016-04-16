class WelcomeController < ApplicationController
  #before_action :authenticate_user!
  
  def index
    if user_signed_in?
      redirect_to current_user
    end
  end
end
#write skip before_action