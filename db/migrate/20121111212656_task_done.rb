class TaskDone < ActiveRecord::Migration
  def up
    add_column :tasks, :done, :boolean, default: false
  end

  def down
    remove_column :tasks, :done
  end
end
