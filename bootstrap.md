---
layout: default
title: Bootstrap
---
# Bootstrap

Instead of worrying about theming ourselves, let's use [Twitter Bootstrap](http://twitter.github.com/bootstrap/) to get some base styles in for us.

We could download the stylesheet ourselves, but there's a Gem that does it for us: [Twitter Bootstrap Rails](https://github.com/seyhunak/twitter-bootstrap-rails)

Open up your `Gemfile` (in the top level directory) and add the following line below `gem 'jquery-rails'`:

    gem 'twitter-bootstrap-rails'

Now save, and run from the console:

    bundle install

## Bootstrapping Bootstrap

The bootstrap Gem comes with some generators to help us apply Twitter bootstrap to our app, first, run the following command to install the necessary assets:

    rails generate bootstrap:install

Now ask it to rewrite your layout with bootstrap (press 'y' to let overwrite the conflict)

    rails generate bootstrap:layout application fixed

Next you need to delete the default scaffolding stylesheets as it conflicts:

    rm app/assets/stylesheets/scaffolds.css.scss 

Fire the Rails server and visit `http://localhost:3000/` to view your app slightly themed.

## Theming the scaffold

We could go in and theme the scaffold, but luckily the Gem provides a generator for that as well, from the console run (press 'a' to allow all overwrites)

    rails generate bootstrap:themed Tasks

And visit your app again.
    

Section complete: \[_\] Finished

Next [Adding Users](users.html)


    


