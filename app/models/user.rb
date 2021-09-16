require_relative 'application_record'

class User < ApplicationRecord
  has_many :posts
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
>>>>>>> 2923b33d89ae553d77bd3cde885c11cffe55e4ea
end
