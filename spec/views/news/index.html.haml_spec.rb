require 'spec_helper'

describe "news/index" do
  before(:each) do
    assign(:news, [
      stub_model(News),
      stub_model(News)
    ])
  end

  it "renders a list of news" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
