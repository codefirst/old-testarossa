class Plan < ActiveRecord::Base
  belongs_to :project
  attr_accessible :actual, :expect, :finished_at, :notes, :started_at
  validates :project, :presence => true
  validates :expect, :numericality => { :only_integer => true }
  validates :actual, :numericality => { :only_integer => true }, :allow_blank => true
  validates :started_at, :presence => true
end
