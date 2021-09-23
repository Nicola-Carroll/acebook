require 'rails_helper'

RSpec.describe Post, type: :model do
  include ActionDispatch::TestProcess::FixtureFile

  it 'should only upload valid images' do
    post =
      Post.create(
        message: "Hello, world!", 
        user_id: 1, 
        post_image: fixture_file_upload('test_image.txt', 'image/txt')
      )
    expect(post).to_not be_valid
  end
end
