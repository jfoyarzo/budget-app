class ApplicationController < ActionController::Base
  layout :select_layout
  before_action :authenticate_user!

  private

  def select_layout
    user_signed_in? ? 'application' : 'no_hero'
  end
end
