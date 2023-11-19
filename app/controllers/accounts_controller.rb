class AccountsController < ApplicationController
  def index
    @posts = Post.active
    @following_ids = Follower.where(follower_id: current_account.id).map(&:following_id)
    @following_ids << current_account.id
    @follower_suggestions = Account.where.not(id: @following_ids)
  end

  def profile
    @account = Account.find_by_username(params[:username])
    @posts = @account.posts.active
  end

  def follow_account
    follower_id = params[:follow_id]
    if Follower.create!(follower_id: current_account.id, following_id: follower_id)
      flash[:success] = 'New following'
    else
      flash[:danger] = 'Unable to follow that user'
    end
    redirect_to dashboard_path
  end
end
