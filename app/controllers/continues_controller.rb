class ContinuesController < ApplicationController
  def create
    continue = Continue.new
    continue.user_id = current_user.id
    continue.save
    flash[:success] = '継続成功！'
    redirect_to user_url(current_user)
  end

  def destroy
    continue = Continue.where(user_id: params[:user_id])
    continue.destroy_all
    flash[:danger] = '継続に失敗しました。'
    redirect_to user_url(current_user)
  end
  
end
