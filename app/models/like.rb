class Like < ActiveRecord::Base

  #Validations
  #Validates User ID is present and Unique in combination with the photo_id
  validates :user_id, presence: true, uniqueness: {scope: :photo_id}

  #Validates Photo ID is present
  validates :photo_id, presence: true

  #Associations
  #A like belongs to a photo
  belongs_to :photo

  #A like belongs to a user
  belongs_to :user
end
