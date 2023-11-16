class LikesController < ApplicationController
  def save_like
    @like = Like.new(account: current_account, post_id: params[:post_id])
    @post_id = params[:post_id]
    exisiting_like = Like.where(account: current_account, post_id: params[:post_id])
    Post.find(@post_id).update(likes_counter: Post.find(params[:post_id]).likes.count)
    respond_to do |format|
      format.js {
        if exisiting_like.any?
          exisiting_like.first.destroy
          @success = false
        elsif @like.save
          @success = true
        else
          @success = false
        end
        
        render 'posts/like'
      }
    end
  end
end
