class Zombie < ApplicationRecord
  validates :name, presence: true
   
  def avatar_url
    "http://zombitar.com/#{id}.jpg"
  end
end
 

