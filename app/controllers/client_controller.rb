class ClientController < ApplicationController

  def new; end

  def create
    if params[:name] && params[:email] && params[:phone]
      Client.create(name: params[:name], email: params[:email], phone: params[:phone])
    end

    redirect_to root_path
  end

end
