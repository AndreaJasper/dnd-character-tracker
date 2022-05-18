class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def show
    response_with current_user
  end
end
