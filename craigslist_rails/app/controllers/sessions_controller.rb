class SessionsController < ApplicationController
  # "Create" a login, aka "log the user in"
  def index
  end

  def create
    if user = User.authenticate(params[:session])
      session[:current_user_id] = user.id
      redirect_to categories_path
    else
      @error = "WRONG!"
      render "welcome/index"
      #redirect_to welcome_index_path
    end

  end

  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_path
  end
end
