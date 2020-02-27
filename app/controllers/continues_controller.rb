class ContinuesController < ApplicationController
  def create
    @continue = Continue.new
    @continue.user_id = current_user.id
    @continue.save
    redirect_to user_url(current_user)
  end

  def destroy
    @user = User.find(params[:id])
    @continue = @user.continues.user_id
    @continue.destroy
  end
end
