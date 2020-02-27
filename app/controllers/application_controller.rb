class ApplicationController < ActionController::Base
  before_action :set_current_user
  include SessionsHelper # 全controllerで使用可能になる
  include BooksHelper

  def set_current_user
    @current_user = User.find_by(id: session[:id])
  end
end
