class Comment < ActiveRecord::Base

  #Validates User ID is present
  validates :user_id, presence: true

  #Validates Photo ID is present
  validates :photo_id, presence: true

  #Validates Body is present
  validates :body, presence: true

end
