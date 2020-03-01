class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: 'アカウントの登録が完了しました！'
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: 'パスワードをリセットしました！'
  end
end
