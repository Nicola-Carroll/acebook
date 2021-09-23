require 'rails_helper'
require 'helper_methods'

RSpec.describe User, type: :model do
  include ActionDispatch::TestProcess::FixtureFile

  it 'can create a user' do
    user = add_new_sample_user
    assert user.save
  end

  # username and email are unique

  it 'should validate uniqueness of username' do
    user_1 = add_new_sample_user
    user_2 =
      User.create(
        first_name: 'Tom',
        last_name: 'Balm',
        username: 'HilliBilly',
        email: 'tom@example.com',
        password: 'griltheAnim4lz'
      )
    expect(user_2).to_not be_valid
  end

  it 'should validate uniqueness of email' do
    user_1 = add_new_sample_user
    user_2 =
      User.create(
        first_name: 'Tom',
        last_name: 'Balm',
        username: 'Something_different',
        email: 'hilly@example.com',
        password: 'griltheAnim4lz'
      )
    expect(user_2).to_not be_valid
  end

  it 'should only accept valid email addresses' do
    user =
      User.create(
        first_name: 'Tom',
        last_name: 'Balm',
        username: 'Something_different_again',
        email: 'this isn\'t an email',
        password: 'griltheAnim4lz'
      )
    expect(user).to_not be_valid
  end

  it 'should only accept valid profile pictures' do
    user =
      User.create(
        first_name: 'Tom',
        last_name: 'Balm',
        username: 'Something_different_again',
        email: 'hilly@example.com',
        password: 'griltheAnim4lz',
        profile_image: fixture_file_upload('test_image.txt', 'image/txt')
      )
    expect(user).to_not be_valid
  end
end
