class Post < ApplicationRecord
  has_one_attached :post_image
  has_many :comments
end
