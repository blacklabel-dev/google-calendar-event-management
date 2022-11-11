class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(_user)
    events_path
  end
end
