class Photo < ActiveRecord::Base

  #Validates User ID is present
  validates :user_id, presence: true
end
