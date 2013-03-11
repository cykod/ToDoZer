---
layout: default
title: Menu
---
# Users

Right now the app works, but anyone visiting the website can see all the different tasks that are in there.

This isn't good. We need a mechanism to sign up users and associate tasks with them.

Normally this is a pain, but there is a Gem called [devise](https://github.com/plataformatec/devise) that provides a base level of functionality very quickly.

# Installing Devise

Add the devise gem to your Gemfile:

    gem 'devise'

Run bundler to install the Gem:

    bundle install

Now install devise and create a User model:

    rails generate devise:install
    rails generate devise User

Update your database:

    rake db:migrate

Finally, add the following to second line of `app/controllers/tasks_controller.rb` 

    class TasksController < ApplicationController
         before_filter :authenticate_user!

Now try to visit your tasks page again - you'll be kicked out but can sign up to access the page.

# Associate Users and Tasks

Once logged in, you'll still be able to see all tasks. We want to limit this to only the ability to see your own tasks.

To do this we need to add a column to let a Task know what user it's associated with.

First create a new migration: 

    rails generate migration TaskUser

Next edit the new file in db/migrate/, and modify the body of the class to read:

    class TaskUser < ActiveRecord::Migration
      def change
        add_column :tasks, :user_id, :integer
      end
    end

Now run the migration:

   rake db:migrate

Next, open up `app/models/user.rb` and add the line (inside the class body):

   has_many :tasks

Next, open up `app/models/task.rb` and add the line:

   belongs_to :user

Finally, open up `app/controllers/tasks_controller.rb` and change anywhere you see `Task.` to read `current_user.tasks.`.

# Adding in validations

Rails has built-in validation support for models. Right now you can create tasks without names. Let's fix that by adding in a validation to the Task model. Open up `app/models/task.rb` and update it to read:

    class Task < ActiveRecord::Base
      attr_accessible :name

      belongs_to :user

      validates :name, presence: true
    end

Now try to create task without a name and see what happens. It won't save, but there's no error message. Let's fix that. Open up `app/views/tasks/_form.html.erb` and modify the top to read:

    <%= form_for @task, :html => { :class => 'form-horizontal' } do |f| %>
      <% if @task.errors[:name].any? %>
        <div class="alert alert-error">
          Please enter a name
        </div>
      <% end -%>
      <div class="control-group">

Now try to save a task.

# Playing with the console

Rails has a special irb console we can use to play with our data, load it up with:

    rails console

And wait for the instructor to talk about what we can do from there. Also, we want to talk about modules.

Learn More: 
* [Action Controller](http://guides.rubyonrails.org/action_controller_overview.html)
* [Active Record Validations](http://guides.rubyonrails.org/active_record_validations_callbacks.html) 
* [Active Record Associations](http://guides.rubyonrails.org/association_basics.html) 
* [Active Record Querying](http://guides.rubyonrails.org/association_basics.html)

Next [Views: Menu Links and ERB](menu.html)

