class Task < ActiveRecord::Base

  validates :name, presence: true

  scope :undone_first, lambda { order("done, created_at DESC") }
  attr_accessible :name, :done

  belongs_to :user
end
