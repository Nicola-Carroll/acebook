class Post < ApplicationRecord
  has_one_attached :post_image
  has_many :comments
  validates :post_image, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
            size: { less_than: 5.megabytes , message: 'Uploaded image size is too big' }
end
