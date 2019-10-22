class ClientController < ApplicationController

  def new; end

  def create
    if params[:name] && params[:email] && params[:phone]
      user = Client.create(name: params[:name], email: params[:email], phone: params[:phone])
      NewUserMailer.send_info(user).deliver_now
    end

    redirect_to root_path
  end

end
