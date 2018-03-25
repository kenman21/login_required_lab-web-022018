class SecretsController < ApplicationController

  def show
    if !session.include? :name
      redirect_to '/login'
    end
  end


  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
