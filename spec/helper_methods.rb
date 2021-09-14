def add_new_sample_user
  User.create(
    first_name: 'Willy',
    last_name: 'Balm',
    username: 'HilliBilly',
    email: 'hilly@example.com',
    password: 'griltheAnim4lz'
  )
end
