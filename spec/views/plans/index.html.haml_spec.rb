require 'spec_helper'

describe "plans/index" do
  before(:each) do
    assign(:plans, [
      stub_model(Plan,
        :project => nil,
        :startedAt => "Started At",
        :finishedAt => "Finished At",
        :expect => 1,
        :actual => 2,
        :notes => "MyText"
      ),
      stub_model(Plan,
        :project => nil,
        :startedAt => "Started At",
        :finishedAt => "Finished At",
        :expect => 1,
        :actual => 2,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Started At".to_s, :count => 2
    assert_select "tr>td", :text => "Finished At".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
