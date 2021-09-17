# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
    
  { username: 'Mendel Durie',
    email: 'mendeldurie0@example.com',
    password: 'dQlRIF',
    first_name: 'Mendel',
    last_name: 'Durie'
  },
  { username: 'Joe Bloggs',
    email: 'joebloggs@example.com',
    password: 'dQlRIF',
    first_name: 'Joe',
    last_name: 'Bloggs'
  },
  { username: 'Sir David Attenborough',
    email: 'davidattenborough@example.com',
    password: 'dQlRIF',
    first_name: 'David',
    last_name: 'Attenborough'
  }]

  posts = [
    {
      message: "Hello Graeme",
      user_id: 1
    },
    {
      message: "Hello Apps",
      user_id: 2
    }
  ]

users.each { |user| User.create(user) }
posts.each { |post| Post.create(post) }