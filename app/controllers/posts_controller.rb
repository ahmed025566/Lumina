class PostsController < ApplicationController
  before_action :authenticate_account!

  def show
    @post = Post.find(params[:id]) if params[:id].present?
    @comment = Comment.new
    @comments = Comment.includes(:account).where(post_id: @post.id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_parms)
    @post.account = current_account
    if @post.save
      redirect_to dashboard_path, notice: 'post created successfully'
    else
      redirect_to new_post_path, notice: 'post was not saved!'
    end
  end

  private

  def post_parms
    params.require(:post).permit(:active, :description, images: [])
  end
end
