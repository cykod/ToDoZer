---
layout: default
title: Scaffolding
---
# Scaffolding

Rails aims to speed up development with code generation for reptitive tasks. One way it does this is with a scaffolding generator that creates a simple CRUD for a resources. 

**Note: in real projects we generally don't use scaffolding, but it's a nice helper on as you are getting going**

Next, you're going to create a Task resource using scaffolding:

    rails g scaffold task name:string

This will create a bunch of files: 

      invoke  active_record
      create    db/migrate/20121112020358_create_tasks.rb
      create    app/models/task.rb
      invoke    test_unit
      create      test/unit/task_test.rb
      create      test/fixtures/tasks.yml
      invoke  resource_route
       route    resources :tasks
      invoke  scaffold_controller
      create    app/controllers/tasks_controller.rb
      invoke    erb
      create      app/views/tasks
      create      app/views/tasks/index.html.erb
      create      app/views/tasks/edit.html.erb
      create      app/views/tasks/show.html.erb
      create      app/views/tasks/new.html.erb
      create      app/views/tasks/_form.html.erb
      invoke    test_unit
      create      test/functional/tasks_controller_test.rb
      invoke    helper
      create      app/helpers/tasks_helper.rb
      invoke      test_unit
      create        test/unit/helpers/tasks_helper_test.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/tasks.js.coffee
      invoke    scss
      create      app/assets/stylesheets/tasks.css.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.css.scss

One of those files, which will be called something like `db/migrate/20121112020358_create_tasks.rb` is a migration that will modify the database. 

You need to run the migration to have it modify the database:

    rake db:migrate

This will create a table in the sqlite database that new Rails apps default to. Now run or restart your server and go to `localhost:3000/tasks` and create, edit and delete a few tasks.

# Routes

Creating the scaffolding adds in a number of new routes. Run:

    rake routes

To see a list of the routes in your application. It should look something like: 

        tasks GET    /tasks(.:format)          tasks#index
              POST   /tasks(.:format)          tasks#create
     new_task GET    /tasks/new(.:format)      tasks#new
    edit_task GET    /tasks/:id/edit(.:format) tasks#edit
         task GET    /tasks/:id(.:format)      tasks#show
              PUT    /tasks/:id(.:format)      tasks#update
              DELETE /tasks/:id(.:format)      tasks#destroy
         root        /                         page#index
        about GET    /about(.:format)          page#about

You can access routes using the name of on the left followed by `_path`. For example, to get the route for `/tasks` you could write `tasks_path` in a controller or view in ruby.

# CRUD and REST

Wait for the bearded guy to talk about CRUD and REST - but go ahead and read the stuff below while you're waiting:

At the core, most database driven web sites are the same. They need to store records and provide a way to do the following:

* **C**reate new records in the database
* **R**ead or show the records in the database
* **U**pdate existing records
* **D**estroy or delete records

### REST  (Representational State Transfer)
* Application state and functionality are abstracted into resources
* Each resource may be referenced with a global identifier (URI over HTTP)
* Resources share a uniform interfaces
* introduced in 2000 in the [doctoral dissertation of Roy Fielding](http://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm)

### REST URIs and HTTP actions
* GET http://localhost:3000/tasks - a list of all the tasks
* GET http://localhost:3000/tasks/1 - the first task
* POST http://localhost:3000/tasks - create a task
* PUT http://localhost:3000/tasks/1 - modify the first task
* DELETE http://localhost:3000/tasks/1 - delete the first task

You can see those tasks in `app/controllers/tasks_controller.rb` that was generated for you.

Read More: [Rails Guide Scaffolding](http://guides.rubyonrails.org/getting_started.html#getting-up-and-running-quickly-with-scaffolding)

Next [Make 'er pretty](bootstrap.html)

