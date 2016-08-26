class SessionsController < ApplicationController

  before_action :require_login, except: [:new, :create]

  @user = nil

    def new
    end

    def create
      if params[:name] == nil || params[:name] == ""
        redirect_to '/'
      else
        session[:name] = params[:name]
        redirect_to '/show'
      end
    end

    def show
      @user = current_user
    end


    def destroy
      session[:name] = nil
    end

end
