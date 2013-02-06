require 'spec_helper'

describe "reserves/show" do
  before(:each) do
    @reserve = assign(:reserve, stub_model(Reserve))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
