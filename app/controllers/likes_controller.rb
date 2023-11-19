class LikesController < ApplicationController
  before_action :authenticate_account!

  def save_like
    @like = Like.new(account: current_account, post_id: params[:post_id])
    @post_id = params[:post_id]
    exisiting_like = Like.where(account: current_account, post_id: params[:post_id])

    respond_to do |format|
      format.js do
        if exisiting_like.any?
          exisiting_like.first.destroy
          @success = false
        elsif @like.save
          @success = true
        else
          @success = false
        end
        @post_likes = Post.find(@post_id).likes_counter
        render 'posts/like'
      end
    end
  end
end
