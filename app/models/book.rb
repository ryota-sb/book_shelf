class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :commented_user, through: :comments, source: :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  belongs_to :user

  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true
  validates :user_id, presence: true

  def like?(user)
    liked_users.include?(user)
  end
  
  def like(user)
    likes.create(user_id: user.id)
  end

  def unlike(user)
    likes.find_by(user_id: user.id).destroy
  end

  def self.search(search)
    return Book.all unless search
    Book.where(["title LIKE ?", "%#{search}%"])
  end
end