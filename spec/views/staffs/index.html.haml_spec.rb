require 'spec_helper'

describe "staffs/index" do
  before(:each) do
    assign(:staffs, [
      stub_model(Staff,
        :login => "Login"
      ),
      stub_model(Staff,
        :login => "Login"
      )
    ])
  end

  it "renders a list of staffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
  end
end
