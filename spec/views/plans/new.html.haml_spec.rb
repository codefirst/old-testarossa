require 'spec_helper'

describe "plans/new" do
  before(:each) do
    assign(:plan, stub_model(Plan,
      :project => nil,
      :startedAt => "MyString",
      :finishedAt => "MyString",
      :expect => 1,
      :actual => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plans_path, :method => "post" do
      assert_select "input#plan_project", :name => "plan[project]"
      assert_select "input#plan_startedAt", :name => "plan[startedAt]"
      assert_select "input#plan_finishedAt", :name => "plan[finishedAt]"
      assert_select "input#plan_expect", :name => "plan[expect]"
      assert_select "input#plan_actual", :name => "plan[actual]"
      assert_select "textarea#plan_notes", :name => "plan[notes]"
    end
  end
end
