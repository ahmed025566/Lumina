class PublicController < ApplicationController
  def homepage
    if account_signed_in?
      redirect_to dashboard_path
    end
  end
end
