class UserProfileController < ApplicationController
  before_action :authenticate_user!
  def index
    profiles = UserProfile.order(created_at: desc)
  end

  def new
    @profile = UserProfile.new
  end

  def show
    @profile = UserProfile.find(params[:id])
  end

  private

  def authenticate_user!
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end
