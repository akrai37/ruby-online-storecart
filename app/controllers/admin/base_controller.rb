module Admin
  class BaseController < ApplicationController
    before_action :require_admin
    
    private
    
    def require_admin
      unless session[:admin_id]
        redirect_to admin_login_path, alert: "Please log in as admin"
      end
    end
    
    def current_admin
      @current_admin ||= ::AdminUser.find_by(id: session[:admin_id]) if session[:admin_id]
    end
    helper_method :current_admin
  end
end
