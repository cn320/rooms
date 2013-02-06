require 'spec_helper'

describe "tools/index" do
  before(:each) do
    assign(:tools, [
      stub_model(Tool),
      stub_model(Tool)
    ])
  end

  it "renders a list of tools" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
