require_relative 'application_record'

class User < ApplicationRecord
  validates_uniqueness_of :username, :email
  validates :password, presence: true, confirmation: true
  validates :email,
            presence: true,
            confirmation: true,
            format: {
              with: /\A[^@\s]+@[^@\s]+\z/,
              message: 'Must be a valid email address'
            }
end
