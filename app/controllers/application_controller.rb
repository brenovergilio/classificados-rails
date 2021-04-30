class ApplicationController < ActionController::Base
    helper_method :user_signed_in?, :current_user
    
    def user_signed_in?
        current_user.present?
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
end
