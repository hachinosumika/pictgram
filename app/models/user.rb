class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+.[a-z]+\z/i }
  
VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX },
                       length: { in: 8..32 }
  
    
  has_secure_password
  
  has_many :topics
  has_many :favotites
end
  
