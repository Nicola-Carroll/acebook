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

## Initial domain model

![image](https://user-images.githubusercontent.com/83607124/138064371-c394dd0f-facb-45ea-b140-9a9318e77c51.png)


## Running the program locally

Ensure you have Node.js installed on your machine as the JavaScript runtime. 


```
brew install node
```

Then, after cloning this repository run:

```
bundle install
bin/rails db:migrate

rspec # Run the tests to ensure it works
bin/rails server # Start the server at localhost:3000
```
