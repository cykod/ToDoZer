---
layout: default
title: ToDoZer
---
# Crafting a home page

To start playing with the system, you're going to replace the default home page with one of your own making.

First delete the existing, static home page:

    rm public/index.html

Next, let's run a generator (a Rails shortcut that generates code for us) to create a home page and an about page for our app:

    rails g controller Page index about
  
This has created controllers, views and routes. Start up your server and go to `http://localhost:3000/page/index`. This will show you the page you just created (which just contains dummy content)

Open up `app/views/page/index.html.erb` and change this to introduce the ToDo app you will be creating. Next open up `app/views/page/about.html.erb` and tell us about the ToDo (alternatively, just add in a couple sentence sof http://lipsum.com HTML. Don't worry about laying anything all too nice out, just add in some &lt;h1> and &lt;p> tags.

# Changing the routes

In order to change the the routes, open up `config/routes.rb` and edit two lines that got added in at the top from:

    get "page/index"
    get "page/about"

To read: 

    root :to => "page#index"
    get "/about" => "page#about"

Take a second to read the existing comments in the file as well.

Now visit your app's home page at `http://localhost:3000` and you should see your index page. Go to `/about` to see the about page.

Next [Github Break](github-break.html)
