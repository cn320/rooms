require 'spec_helper'

describe "tools/show" do
  before(:each) do
    @tool = assign(:tool, stub_model(Tool))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
