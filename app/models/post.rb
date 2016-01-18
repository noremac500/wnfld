class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 1000 } #change based on user preferences in future
  default_scope -> { order(created_at: :desc) } # Newest posts first
end
