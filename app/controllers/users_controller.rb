class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def create
    if user = User.authenticate(params[:email], param[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back, #{user.name}!"
        redirect_to(session[:intended_url] || user)
        session[:intended_url] = nil
      else
        flash.now[:alert] = "Invalid email/password combination!"
        render :new
    end
  end

  def show
    response_with current_user
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end
end
