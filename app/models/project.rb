class Project < ActiveRecord::Base
  has_many :plans
  attr_accessible :name
end
