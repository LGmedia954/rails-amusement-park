class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    #returns 'sad' when the user is more nauseous than happy
    unless admin
      happiness > nausea ? "happy" : "sad"
    end
  end

end
