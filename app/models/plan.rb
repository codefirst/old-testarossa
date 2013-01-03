class Plan < ActiveRecord::Base
  belongs_to :project
  attr_accessible :actual, :expect, :finishedAt, :notes, :startedAt
  validates :project, :presence => true
  validates :expect, :numericality => { :only_integer => true }
  validates :actual, :numericality => { :only_integer => true }, :allow_blank => true
  validates :startedAt, :presence => true
end
