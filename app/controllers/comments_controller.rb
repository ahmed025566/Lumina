class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_parms)
    @comment.account = current_account
    if @comment.save
      return_url = params[:return_to].present? ? post_path(@post.id) : dashboard_path
      redirect_to return_url, notice: 'comment created successfully'
    else
      redirect_to dashboard_path, notice: 'comment was not saved!'
    end
  end

  private

  def comment_parms
    params.require(:comment).permit(:comment, :post_id)
  end
end
