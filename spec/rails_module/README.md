## Objectives
In this module you will have to create several models and controllers.

In the coaching session you firstly learned how to create a new landing page because we don't want to have the default rails page.

So first create a new page called `home`. Remember you will need to:
- Create a route for that page in `routes.rb`
- Map it to a method in a controller. In this case we can call the controller `PagesController` and the method `home`
- Create a view. **⚠️ Make sure you use the correct folder hierarchy so rails can do its magic ⚠️**

For example, if I have a `UserController` with a method `index` my view will be created in the following place: `app/views/user/index.html.erb`

Once your landing page is created let's create the models (and **migrations**!)
- Create a `User` model:
  - Attributes:
    - Should have a name and a handle
    - Name and handle should be mandatory fields
  - Associations:
    - Should have many `tweets`
    - Should have many `liked_tweets` to see all the tweets that a user liked
- Create a `Tweet` model:
  - Attributes:
    - Should have content as an attribute
    - Content should be mandatory
  - Associations:
    - Should belong to `user`
    - Should have many `liking_users` to see all the users that liked the tweet
- Create a `Like` model:
  - Associations:
    - Should belong to `user`
    - Should belong to `tweet`

**__TIP__**:
- To make the `liking_users` and the `liked_tweets` association have a look at the `source` attributes. Here is a [small explanation](https://medium.com/@afanimartin/foreignkey-vs-classname-vs-source-in-rails-associations-609c144c1063) (look mainly at the source section)

Now let's make the controllers (and **routes**!). For this exercise only the `UserController` will have to be created. Feel free to create the controller for the other models as well (if you have time, it's optional since there are no tests to cover this part!).

Your `UserController`:
- Should implement the method `show`. The method `show` should assign a single instance of `User` based on the `:id` to the instance variable `@user`.
- The method `show` should render the `:show` template (`show.html.erb` view).
- Should implement the method `index`. The method `index` should assign *all* users of our database to the instance variable `@users`.
- The method `index` should render the `:index` template.
- Should implement the method `create`. That should create a new `User` based on the `:params` passed.
- The method `create` should render the `:show` template.
- Should implement the method `update` that updates an existing `User` based on the params passed.
- The method `update` should render the `:show` template.
- Should implement the method `destroy` method that deletes an existing `User` based on the `:id`
- The method `destroy` should render the `:index` template.

Now for the **__optional__** challenge:

We all know that in twitter we can create a tweet and like a tweet. But we can also follow users. So a User can follow other users and also have followers.

This exercise is more tricky because you will need to implement a `Follow` model that references **twice** the `User` model. One reference to say what is the id of the user who follows and another to say what is the id of the user that is being followed.

To help you get going:
- Create a `Follow` model + its migration. The model should have `follower_user_id` and `followed_user_id` as attributes.
- Create the `followed` and `follower` association in the `Follow` model. For example it should be possible to:
```ruby
follow = Follow.first
follow.followed # returns an instance of the User who is being followed
follow.follower # returns an instance of the User who is the follower
```

For the really tricky part 😁:
- Improve the `User` model by adding the `followers` and `followings` associations. For example:
```ruby
user_a = User.first
user_a.followers # returns an array of all users that follow user_a
user_a.followings # returns an array of all users that user_a follows
```

## Main learning points
- Create migrations
- Create associations
- understand MVC
- Create CRUD actions
