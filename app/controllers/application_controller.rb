class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :null_session
  protect_from_forgery with: :exception



  def validate_user
    unless session[:validation] == 'changethispart'
      session[:validation] = ''
      redirect_to login_index_path
    end
  end

end
