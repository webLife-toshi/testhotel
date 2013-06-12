class Admin::AdminController < ApplicationController
  layout "admin"

  helper_method :current_administrator

 private

   def current_administrator
     @current_administrator ||= Administrator.find(session[:administrator_id]) if session[:administrator_id]
   end

  def authenticate_administrator
    redirect_to admin_log_in_path,
     alert: "you have to log in" if current_administrator.nil?
  end

end
