class Like < ApplicationRecord
  belongs_to :account
  belongs_to :post
  
  validates_uniqueness_of :post_id, scope: :account_id

  after_create :update_post_likes_counter

  def update_post_likes_counter
    self.post.increment(:likes_counter).save
  end
end
