class ClientController < ApplicationController

  def new; end

  def create
    if params[:name] && params[:email] && params[:phone]
      if Geocoder.search(request.ip).first.country == 'RU'
        user = Client.create(name: params[:name], email: params[:email], phone: params[:phone])
        NewUserMailer.send_info(user).deliver_now if user.valid?
      else
        @country_error = 'NOT Russia'
      end
    end

    redirect_to root_path
  end

end
