require 'spec_helper'

describe "tools/new" do
  before(:each) do
    assign(:tool, stub_model(Tool).as_new_record)
  end

  it "renders new tool form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tools_path, :method => "post" do
    end
  end
end
