class WelcomeController < ApplicationController
  layout 'no_hero'
  before_action :authenticate_user!, except: :index

  def index
    redirect_to groups_path if user_signed_in?
  end
end
