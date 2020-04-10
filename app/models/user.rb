class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

         has_many :sns_credentials
         has_many :posts
         has_many :comments  # commentsテーブルとのアソシエーション
         has_many :likes, dependent: :destroy # いいね機能
         has_many :liked_posts, through: :likes, source: :post # いいね機能
  validates :name, presence: true


  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    user = sns.user || User.where(email: auth.info.email).first_or_initialize(
        name: auth.info.name,
        email: auth.info.email
    )
    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end
#いいね機能
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
end
