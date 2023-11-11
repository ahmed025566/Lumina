class Post < ApplicationRecord
  before_create :set_active
  belongs_to :account

  has_many_attached :images
  scope :active, -> { where active: true }

  def set_active
    self.active = true
  end
end
