module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
  
  def voted?
    !!Site.find_by(id: params[:id]).votes.find_by(user_id: session[:user_id])
  end
end
