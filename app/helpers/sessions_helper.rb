module SessionsHelper
  def sign_in(user)
    session[:current_user_id] = user.id
    self.current_user = user
  end

  def sign_out
    session[:current_user_id] = nil
    self.current_user = nil
  end

  def current_user=(user)
    @current_user = user
  end
end
