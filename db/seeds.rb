# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {
    username: 'Mendel Durie',
    email: 'mendeldurie0@example.com',
    password: 'dQlRIF',
    first_name: 'Mendel',
    last_name: 'Durie',
    pronouns: 'they/them',
    bio: 'I love horses, fear me'
  },
  {
    username: 'Joe Bloggs',
    email: 'joebloggs@example.com',
    password: 'dQlRIF',
    first_name: 'Joe',
    last_name: 'Bloggs',
    pronouns: 'he/him',
    bio: 'I love cows because they are cute'
  },
  {
    username: 'Sir David Attenborough',
    email: 'davidattenborough@example.com',
    password: 'dQlRIF',
    first_name: 'David',
    last_name: 'Attenborough',
    pronouns: 'he/they',
    bio: 'I love cats cause who wouldn\'t?'
  }
]

users.each { |user| User.create(user) }

posts = [
  { user_id: 1, message: 'First post' },
  { user_id: 2, message: 'Second post' },
  { user_id: 3, message: 'Third post' }
]

posts.each { |post| Post.create(post) }
