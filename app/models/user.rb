class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :nick, presence: true, length: { maximum: 50, minimum: 3 }, uniqueness: true
    validates :password, length: { minimum: 6 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, 
        format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    has_secure_password
end
