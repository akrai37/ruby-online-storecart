module Admin
  class SessionsController < ApplicationController
    def new
    end
    
    def create
      admin = ::AdminUser.find_by(username: params[:username])
      
      if admin&.authenticate(params[:password])
        session[:admin_id] = admin.id
        redirect_to admin_dashboard_path, notice: "Logged in successfully!"
      else
        flash.now[:alert] = "Invalid username or password"
        render :new
      end
    end
    
    def destroy
      session[:admin_id] = nil
      redirect_to root_path, notice: "Logged out successfully"
    end
  end
end
