require_relative 'application_record'

class User < ApplicationRecord
<<<<<<< HEAD
  has_secure_password
  validates_uniqueness_of :username, :email
  validates :email,
            presence: true,
            confirmation: true,
            format: {
              with: /\A[^@\s]+@[^@\s]+\z/,
              message: 'Must be a valid email address'
            }
=======
  has_many :posts
>>>>>>> 32dfb83 (Linked comments and posts, added button)
end
