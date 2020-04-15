class Post < ApplicationRecord
  mount_uploader :image,ImageUploader
  validates :content, presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy#いいね機能
  has_many :liked_users, through: :likes, source: :user#いいね機能
  has_many :comments, dependent: :destroy#コメント機能
  has_many :images, dependent: :destroy 
  accepts_nested_attributes_for :images, allow_destroy: true#画像複数投稿

  def self.search(search)
    return Post.all unless search
    Post.where('country LIKE(?)', "%#{search}%")
  end
end
