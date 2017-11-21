class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 2 }
  validates :bio, length: { maximum: 500 }
end
