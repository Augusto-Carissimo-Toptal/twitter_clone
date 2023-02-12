## Introduction
In this module we didn't write any tests. It is your mission to:

1 - Write the tests

2 - Write the code to make these tests pass

## Objectives
During the `rails_module` you have created the basic models to have a first version of the application:
- `User` model
- `Tweet` model
- `Like` model
- and if you managed to make the optional challenge the `Follow` model

But twitter is a bit more than that. When we use twitter we can also put hashtags in our tweets and we can also mention users!
So your mission will be to created those two models with TDD approach 😀

Specifications:
- Your `Hashtag` model:
  - can have many tweets and a `Tweet` can have many hashtags
  - a hashtag cannot have spaces
  - it needs to start with a `#`
  - cannot be longer than 20 characters
- Your `Mention` model:
  - a `User` can be mentioned in many tweets
  - a `Tweet` can mention many users

## Optional challenge
As usual we also have an optional challenge for you 💪

As you might remember we've created some specs for the `users_controller` to help you code the different CRUD methods.
Your optional challenge is to create the specs for the other controllers (`tweets_controller` and `likes_controller`) and then write the code to make the tests pass!

**__NOTE__** The main point in this optional challenge is not to blindly create all CRUD methods for all controllers. Think which methods make sense and which don't. For example, does it make sense to have an `index` method in the `likes_controller` ?🧐
