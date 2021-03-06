class Comment < ActiveRecord::Base
  #Validations
  #Validates User ID is present
  validates :user_id, presence: true

  #Validates Photo ID is present
  validates :photo_id, presence: true

  #Validates Body is present
  validates :body, presence: true


  #Associations
  #A comment belongs to a photo
  belongs_to :photo

  #A comment belongs to a user
  belongs_to :user
end
