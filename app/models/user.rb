require_relative 'application_record'

class User < ApplicationRecord
  validates_uniqueness_of :username, :email
end
