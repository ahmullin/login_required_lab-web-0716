class SecretsController < ApplicationController


  def show
    unless current_user
      redirect_to '/'
    end
  end


end
