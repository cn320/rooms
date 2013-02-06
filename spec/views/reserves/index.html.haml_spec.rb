require 'spec_helper'

describe "reserves/index" do
  before(:each) do
    assign(:reserves, [
      stub_model(Reserve),
      stub_model(Reserve)
    ])
  end

  it "renders a list of reserves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
