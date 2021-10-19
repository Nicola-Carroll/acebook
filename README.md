# AceBook

## Overview

This project is a simple Facebook clone. Users can signup with an optional profile picture, login, make posts (with images), like/dislike and comment on posts, search all posts for specific content, and view their own profile page.
[
This app is deployed on Heroku.
](https://whispering-woodland-40745.herokuapp.com/)

## Team members

- [Fiona Apps](https://github.com/oddpotato)
- [Yousuf Mohamed](https://github.com/yousufmohamed17)
- [Graeme Stirling](https://github.com/gjstirling)
- [Nicola Carroll](https://github.com/Nicola-Carroll)
- [Suhani Zaman](https://github.com/suhani-zaman)
- [Corinne Bösch](https://github.com/CorinneBosch)


## Technologies

- Framework: Ruby on Rails
- Database tools/ORM: ActiveRecord, ActiveStorage
- Testing: RSpec and Capybara
- Linting: Rubocop
- Deployment: Heroku
- Business tools: Miro, Trello, EasyRetro
- Other: jQuery

## Setting up databases

## Running the program locally

## Running the tests






First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Troubleshooting

If you don't have Node.js installed yet, you might run into this error when running rspec:

```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
 ```

Rails requires a Javascript runtime to work. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again
