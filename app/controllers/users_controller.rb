class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :log_in_user, only: [:index, :show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    @books = @user.books
    @continue = @user.continues.last
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.account_activation(@user).deliver_now
      flash[:info] = 'メールを送信しました。メールを確認して登録を完了させよう！'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def following
    @title = 'フォロー中'
    @user = User.find(params[:id])
    @users = @user.following.all
    render 'show_follow'
  end

  def followers
    @title = 'フォロワー'
    @user = User.find(params[:id])
    @users = @user.followers.all
    render 'show_follow'
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def log_in_user
    if !logged_in?
      store_location
      flash[:danger] = 'ログインしてください。'
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to user_url(current_user) unless current_user?(@user)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :image, :objective)
  end
end
