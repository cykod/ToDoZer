---
layout: default
title: ToDoZer
---

# Make sure you have Rails installed

Run
   
    rails -v 

It should return

    rails 3.2.8

**Only** if not, run:

    gem install rails

# Create your Rails app

Run
    
    rails new todozer

This should create a new Rails application and list a bunch of new files just created in a new `todozer` subdirectory.

Go into that new directory and list the directory:

    cd todozer
    ls -la

# Run your Rails App

Run

    rails server

This will start up the rails server on port 3000

Visit `http://localhost:3000/` in your browser to see the default rails startup page.

**If you don't, please raise your hand.**

# Let's talk Application Structure

Type this in the terminal

```
ls
```

`ls` stands for 'list (stuff)'.
It shows you the contents of the current folder.

The `tree` command can show you how files are laid out in your project
folder.

If you are using OS X, you may first need to install the `tree` command
by typing this command:

```
brew install tree
```

Assuming that you have the `tree` command installed, if you are using OS
X or Linux, type this in the terminal: 

```
tree -d
```

You should see the entire directory tree of your project so you can see all the folders. 

You can see that `rails new` created a lot directories and files. The ones we want to focus on today are:

`app/` Contains assets (stylesheets, javascript, images), controllers, models, and views for your application.  You will do most of your work here.  
`config/` Configure your application's runtime rules, routes, database, and more.  
`db/` Shows your current database schema, as well as the database migrations.  
`public/` The only folder seen to the world as-is. This is where your static files go. You can also put stylesheets, javascript and images in this folder.

There is a lot more that `rails new` created. Probably enough to fill a book, so we're going to ignore them for now.

Section complete: \[_\] Finished

Next [Crafting a home page](crafting-a-homepage.html)
