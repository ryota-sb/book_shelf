class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: @user.email, subject: 'アカウントの登録を完了させよう！'
  end

  def password_reset(user)
    @user = user
    mail to: @user.email, subject: 'パスワードのリセット'
  end
end
