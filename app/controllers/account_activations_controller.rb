class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activation
      log_in user
      flash[:success] = 'アカウントの登録が完了しました。'
      redirect_to user
    else
      flash[:danger] = '無効なリンクです。'
      redirect_to root_url
    end
  end
  
end
