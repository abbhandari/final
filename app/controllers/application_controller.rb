class ApplicationController < ActionController::Base
  
  def login_required
    user = User.find_by(id: session['uid'])
    if user.blank?
      redirect_to('/')
    end
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
