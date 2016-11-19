class Like < ActiveRecord::Base

  #Validates User ID is present and Unique in combination with the photo_id
  validates :user_id, presence: true, uniqueness: {scope: :photo_id}

  #Validates Photo ID is present
  validates :photo_id, presence: true
  
end
