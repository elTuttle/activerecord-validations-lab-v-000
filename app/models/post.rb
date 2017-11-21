class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates_with :validate(self.title)

  def validate(title)
    title.include?("Won't Believe")||title.include?("Secret")||title.include?("Top")||title.include?("Guess")
  end

end
