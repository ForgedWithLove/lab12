class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :authenticate, :except => [:signup, :signin, :new, :create]

  def current_user
    @current_user ||= session[:current_user_id] &&
      User.find_by_id(session[:current_user_id])
  end

  private
  def authenticate
    unless current_user
      redirect_to signin_path
    end
  end
end
