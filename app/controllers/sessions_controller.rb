class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.autheticate(params[:session][:password])
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
  end

  def footeer


  end
end
