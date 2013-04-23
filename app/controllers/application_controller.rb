class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    if cookies[:user_id]
      user_id = cookies.signed[:user_id]
      User.find_by_id(user_id)
    end
  end

end
