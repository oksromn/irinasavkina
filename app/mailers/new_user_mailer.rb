class NewUserMailer < ApplicationMailer
  default from: ENV['email']

  def send_info(user)
    @user = user
    mail(to: ENV['to_email'], subject: 'Новый пользователь')
  end

end
