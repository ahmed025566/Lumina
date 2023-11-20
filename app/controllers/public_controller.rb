class PublicController < ApplicationController
  def homepage
    return unless account_signed_in?

    redirect_to dashboard_path
  end
end
