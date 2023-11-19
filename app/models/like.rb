class Like < ApplicationRecord
  belongs_to :account
  belongs_to :post

  validates_uniqueness_of :post_id, scope: :account_id

  after_destroy :decrease_post_likes_counter
  after_create :increase_post_likes_counter

  def increase_post_likes_counter
    Post.find(self.post_id).increment(:likes_counter).save
  end

  def decrease_post_likes_counter
    Post.find(self.post_id).decrement(:likes_counter).save
  end
end
