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

  # it 'must have a unique username' do
  #   user_1 = add_new_sample_user
  #   p User.all
  #   expect {
  #     User.create(
        # first_name: 'Tom',
        # last_name: 'Balm',
        # username: 'HilliBilly',
        # email: 'tom@example.com',
        # password: 'griltheAnim4lz'
  #     )
  #   }.to raise_error ActiveRecord::RecordNotUnique
  #   p User.all
  # end
end
