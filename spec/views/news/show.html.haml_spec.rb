require 'spec_helper'

describe "news/show" do
  before(:each) do
    @news = assign(:news, stub_model(News))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
