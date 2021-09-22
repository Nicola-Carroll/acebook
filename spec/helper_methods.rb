def add_new_sample_user
  User.create(
    first_name: 'Willy',
    last_name: 'Balm',
    username: 'HilliBilly',
    email: 'hilly@example.com',
    password: 'griltheAnim4lz'
  )
end

def login_user
  visit login_path
  fill_in :password, with: 'griltheAnim4lz'
  fill_in :email, with: 'hilly@example.com'
  click_button 'Login'
end