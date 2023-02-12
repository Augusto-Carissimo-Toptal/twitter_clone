# README

## Intro

This repo will accompany you for the rest of your Bootcamp phase.

Last week you did the exercises inside of ruby_module but now, since you will be
working with Rails we will do things a bit differently.

The idea here is that you build a twitter "like" application that you can showcase at the end of the bootcamp phase.

For each module, you'll have a bunch of specs that you have to turn green that will guide you in building the application.

Each module will have **mandatory** tests that you need to finish and other **optional** ones if you feel motivated to do them 😃.

## Get started
First things first is to set the project. Here we already have created the project for you so no need to make a `rails new`

First of all make sure that you are in the correct folder (`twitter_clone`) then:
- `bundle install`
- `rails db:setup`
- `rspec` to see if you manage to run the tests. **__NOTE__** `rspec` will run all the tests of the application. You only have to focus on the ones of your module.

## Run specs
All the tests are in the `/spec` folder and are organized by module.

If you want to run the specs only for a specific module you can do `rspec spec/[name of module]`. For example
- `rspec spec/rails_module`

When you run the tests you will see that some tests are yellow or marked as "pending". These are the **optional** tests.

If you want to give it a try just go to the file where these tests are and remove the `x` before the `it`.
For example, in the `/spec/rails_module/models/follow_spec.rb` file change `xit { should belong_to(:follower).class_name('User') }` to `it { should belong_to(:follower).class_name('User') }`

## Last note

Be creative! The tests are only there to guide you and as high level requirements. Do not hesitate to go crazy if you want to 😃
