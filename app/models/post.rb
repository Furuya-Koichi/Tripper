class Post < ApplicationRecord
  mount_uploader :image,ImageUploader
  validates :content, presence: true
  belongs_to :user
  has_many :comments 
  has_many :images 

  def self.search(search)
    return Post.all unless search
    Post.where('country LIKE(?)', "%#{search}%")
  end
end
