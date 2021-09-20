require_relative 'application_record'

class User < ApplicationRecord
  has_one_attached :profile_image
  has_many :posts
  has_secure_password
  validates_uniqueness_of :username, :email
  validates :email,
            presence: true,
            confirmation: true,
            format: {
              with: /\A[^@\s]+@[^@\s]+\z/,
              message: 'Must be a valid email address'
            }
end
