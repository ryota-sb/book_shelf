class ContinuesController < ApplicationController
  def create
    @continue = Continue.new
    @continue.user_id = current_user.id
    @continue.save
    redirect_to user_url(current_user)
  end

  def destroy
    @continue = Continue.where(user_id: params[:user_id]).destroy_all
    redirect_to user_url(current_user)
  end
end
