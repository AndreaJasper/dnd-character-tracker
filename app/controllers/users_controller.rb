class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def show
    response_with current_user
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end
end
