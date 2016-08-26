class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :require_login

    def current_user
      @current_user ||= session[:name]
    end

    def require_login
      return head(:forbidden) unless current_user
    end

    def authorize
    # binding.pry
      redirect_to '/' unless current_user
    end

end
