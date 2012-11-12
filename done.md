---
layout: default
title: Menu
---
# Marking tasks as done

The final task to do on ToDoZer is to add a field to Tasks to be able to mark a task as done or not.

To do this we'll need to create migration:

    rails g migration TaskDone

Next edit the migration to read:

    class TaskDone < ActiveRecord::Migration
      def up
        add_column :tasks, :done, :boolean, default: false
      end

      def down
        remove_column :tasks, :done
      end
    end

Now run the migration:

    rake db:migrate

# Adding in routes

We're going to create two new routes, finish and unfinish. To mark tasks as finished and unfinished.

Open up `config/routes.rb` and change `resources :tasks` to read:

      resources :tasks do
        put :finish
        put :unfinish
      end

Now add the following to methods to the bottom of `app/controllers/tasks_controller.rb`:

      def finish
        @task = current_user.tasks.find(params[:task_id])

        @task.update_attribute(:done, true)

        respond_to do |format|
          format.html {  redirect_to tasks_path }
        end
      end

      def unfinish
        @task = current_user.tasks.find(params[:task_id])

        @task.update_attribute(:done, false)

        respond_to do |format|
          format.html {  redirect_to tasks_path }
        end
      end

Lastly, add a new column in to `add/views/tasks/index.html` that reads:

      <td>
        <% if task.done? %>
          <%= link_to "Not Done", task_unfinish_path(task), method: "put", class: "btn" %>
        <% else -%>
          <%= link_to "Done", task_finish_path(task), method: "put", class: "btn" %>
        <% end -%>
      </td>

(Don't forget to update the table headers as well)

Section complete: \[_\] Finished

Learn More: [Routing](http://guides.rubyonrails.org/routing.html)

Extra credit: Ordering, Scopes, Ajax, Translations

