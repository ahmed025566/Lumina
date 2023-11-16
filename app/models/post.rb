class Post < ApplicationRecord
  default_scope { order created_at: :desc }

  before_create :set_active

  belongs_to :account
  has_many :likes

  has_many_attached :images

  scope :active, -> { where active: true }

  def set_active
    self.active = true
  end

  def total_likes
    0
  end
end
