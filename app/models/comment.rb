class Comment < ApplicationRecord
  belongs_to :post
  validates :message, presence: true
  validates :user_id, presence: true
end
