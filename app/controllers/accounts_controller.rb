class AccountsController < ApplicationController
  before_action :authenticate_account!

  before_action do
    ActiveStorage::Current.url_options = { protocol: request.protocol, host: request.host, port: request.port }
  end
  def index
    followers_ids = Follower.where(follower_id: current_account.id).map(&:following_id)
    followers_ids << current_account.id

    @posts = Post.includes(:account).where(account_id: followers_ids).active
    @comment = Comment.new

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
