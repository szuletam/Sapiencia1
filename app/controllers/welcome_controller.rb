class WelcomeController < ActionController::Base
  protect_from_forgery prepend: true
  before_action :authenticate_user!

  def index
    @user = current_user
  end

end
