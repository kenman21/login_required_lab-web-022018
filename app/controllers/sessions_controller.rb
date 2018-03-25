class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/welcome'
    end
  end

  def welcome
  end

  def destroy
    if !session[:name]
      session[:name] = nil
    else
      session.delete :name
    end
  end


end
