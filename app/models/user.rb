class User < ApplicationRecord
  validates :username, 
            presence: true, 
            uniqueness: { case_sensitives: false }, 
            length: { minimum: 3, maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  
  validates :email, 
            presence: true, 
            uniqueness: { case_sensitives: false }, 
            length: { maximum: 105 }, 
            format: { with: VALID_EMAIL_REGEX }
end