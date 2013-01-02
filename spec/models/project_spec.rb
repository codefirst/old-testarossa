require 'spec_helper'

describe Project do
  subject { Project.new(:name => 'name') }
  its(:name) { should == 'name' }
end
