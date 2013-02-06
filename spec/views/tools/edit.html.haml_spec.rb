require 'spec_helper'

describe "tools/edit" do
  before(:each) do
    @tool = assign(:tool, stub_model(Tool))
  end

  it "renders the edit tool form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tools_path(@tool), :method => "post" do
    end
  end
end
