class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Go to the first patch when the user is logged in and has patches
    redirect_to patch_path(current_user.patches.first) if user_signed_in? && current_user.patches.present?
  end
end
