class Post < ApplicationRecord
  mount_uploader :image,ImageUploader
  validates :content, presence: true
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

  def self.search(search)
    return Post.all unless search
    Post.where('content LIKE(?)', "%#{search}%")
  end
end
