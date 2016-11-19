class Photo < ActiveRecord::Base

  #Validations
  #Validates User ID is present
  validates :user_id, presence: true

  #Associations
  #A photo belongs to a user
  belongs_to :user

  #A photo has many comments
  has_many :comments

  #A photo has many likes
  has_many :likes

  #A photo has many fans
  has_many :fans, through: :likes, source: :user
end
