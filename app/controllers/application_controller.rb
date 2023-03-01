class ApplicationController < ActionController::Base
  layout :select_layout
  before_action :authenticate_user!

  private

  def select_layout
    @current_user.present? ? 'application' : 'no_hero'
  end
end
