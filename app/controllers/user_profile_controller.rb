class UserProfileController < ApplicationController
  def index
    profiles = UserProfile.order(created_at: desc)
  end

  def new
    @profile = UserProfile.new
  end

  def show
    @profile = UserProfile.find(params[:id])
  end
end
