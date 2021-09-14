require 'rails_helper'
require 'helper_methods'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'is empty to start' do
    assert_empty User.all
  end

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
end
