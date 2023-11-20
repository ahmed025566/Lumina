class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :account

  validates_presence_of :comment
  validates_presence_of :account_id
  validates_presence_of :post_id
  attr_accessor :return_to

  after_destroy :decrease_post_comments_counter
  after_create :increase_post_comments_counter

  def increase_post_comments_counter
    Post.find(post_id).increment(:comments_counter).save
  end

  def decrease_post_comments_counter
    Post.find(post_id).decrement(:comments_counter).save
  end
end
