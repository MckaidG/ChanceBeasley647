class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
def current_user
  	super || guest_user
  end

  def guest_user
  	guest = GuestUser.new
    guest.name = "Guest User"
    guest.email = "guest@example.com"
    guest
  end
end
