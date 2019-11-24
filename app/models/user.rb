class User < ApplicationRecord
    has_many :trips, dependent: :destroy
    validates :full_name, presence: true, length: {maximum: 75}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum:100},
        format: {with: VALID_EMAIL_REGEX}, uniqueness: true

    

    has_secure_password
    validates :password, presence: true, length: {minimum:6}
    validates :password_confirmation, presence: true, length: {minimum: 6}

end
