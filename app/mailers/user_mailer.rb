class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user
    mail(
      to: @user.email,
      subject: "登録完了"
    ) # メール送信
  end
end
