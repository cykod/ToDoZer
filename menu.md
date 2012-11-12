---
layout: default
title: Menu
---
# Diving into views

Views, in the `app/views` directory control the final output markup of your App.

Each controller has it's own view directory with corresponding view templates.

Templates are written in ERB, which stands for Embedded Ruby, and means you can intermingle Ruby and HTML in a single file by enclosing the ruby in `<%=` and `%>` tags.

# Layouts 

Layouts are special views that are used as the base wrapper for your content, they are stored in `app/views/layouts`

The default `app/views/layouts/application.html.erb` layout is used by Rails unless you tell it otherwise.

Open this file up and and take a look at this file.

# Fixing the Menu

The menu currently reads `Link1, Link2, Link3` and the links don't go anywhere. Let's fix this.

Inside of application.html.erb, change the top menu to read:

      <a class="brand" href="/">Todozer</a>
      <div class="container nav-collapse">
        <ul class="nav">
          <% if user_signed_in? %>
            <li><%= link_to "Tasks", tasks_path %></li>
            <li><%= link_to "Logout", destroy_user_session_path, method: "DELETE" %></li>
          <% else -%>
            <li><%= link_to "About", about_path %></li>
            <li><%= link_to "Login", new_user_session_path %></li>
            <li><%= link_to "Register", new_user_registration_path %></li>
          <% end -%>
        </ul>
      </div><!--/.nav-collapse -->

Where do we get these paths? run `rake routes` to find them.

# Alerts

Our default bootstrap layout is missing some alerts, let's add them in.

Create a file called `app/views/layouts/_message.html.erb` and add the following content:

        <% flash.each do |name, msg| %>
          <% if msg.is_a?(String) %>
            <div class="alert alert-<%= name == :notice ? "success" : "error" %>">
              <a class="close" data-dismiss="alert">&#215;</a>
              <%= content_tag :div, msg, :id => "flash_#{name}" %>
            </div>
          <% end %>
        <% end %>

This view begins with an underscore `_`, which means it's a partial.

Open up the `application.html.erb` layout and render the messages partial:

        <div class="container">
          <div class="content">
            <%= render partial: '/layouts/messages' %>
            <div class="row">
               <div class="span9">

You should now see login and logout messages.

# Fixing the List

The tasks list is still a little ugly - let's get rid of the ID and Created at columns. Open up `app/views/tasks/index.html` and get rid of those columns in the HTML.

Section complete: \[_\] Finished

Next [Marking Tasks as done](done.html)

