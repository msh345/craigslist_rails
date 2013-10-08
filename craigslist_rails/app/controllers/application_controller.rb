class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	#This method is needed in order for current_user to be accessible in the view.
  helper_method :current_user

  def current_user
    @_current_user ||= User.find_by_id(session[:current_user_id]) if session[:current_user_id]
  	# @_current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
  end

end