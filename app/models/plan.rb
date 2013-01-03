class Plan < ActiveRecord::Base
  belongs_to :project
  attr_accessible :actual, :expect, :finishedAt, :notes, :startedAt
end
