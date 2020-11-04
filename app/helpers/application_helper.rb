module ApplicationHelper
  def get_user_id
    session[:user_id]
  end
end
