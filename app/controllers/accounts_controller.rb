class AccountsController < ApplicationController
  def index
    @posts = Post.active
  end

  def profile
    @account = Account.find_by_username(params[:username])
  end
end
