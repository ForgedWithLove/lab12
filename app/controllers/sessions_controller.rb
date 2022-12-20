# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :authenticate, only: %i[new create]
  def new; end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.alert = 'Invalid email/password combination.'
      @title = 'Sign in'
      render 'new'
    else
      sign_in user
      redirect_to 'http://localhost:3000/'
    end
  end

  def destroy
    sign_out
    redirect_to 'http://localhost:3000/'
  end
end
