class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Validations
  #Validates Username is present
  validates :username, presence: true

  #Associations
  #A user has many photos
  has_many :photos

  #A user has many comments
  has_many :comments

  #A user has many likes
  has_many :likes

  #A user has many liked photos
  has_many :liked_photos, through: :likes, source: :photo

end
