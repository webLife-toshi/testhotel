module ApplicationHelper

  def admin_signed_in?
    !current_administrator.nil?
  end
end
