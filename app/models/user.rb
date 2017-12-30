class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name
  mount_uploader :avatar, AvatarUploader

  has_many :comments, dependent: :restrict_with_error
  has_many :restaurants, through: :comments

  has_many :favorites, dependent: :destroy
<<<<<<< HEAD
  has_many :favorited_restaurants, through: :favorites, source: :restaurant
=======
  has_many :favorited_restaurants, thourgh: :favorites, source: :restaurant
>>>>>>> a50d84c42992659eda0c1e93f51e26e328690f76

  def admin?
    self.role == "admin"
  end


end
