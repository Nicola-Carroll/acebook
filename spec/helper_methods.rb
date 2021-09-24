def add_new_sample_user
  User.create(
    first_name: 'Willy',
    last_name: 'Balm',
    username: 'HilliBilly',
    email: 'hilly@example.com',
    password: 'griltheAnim4lz'
  )
end

def create_a_post_with_comments
  Comment.create(user_id: 1, post_id: 1, message: 'This is a comment')
end
