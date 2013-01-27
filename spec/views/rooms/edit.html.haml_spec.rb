require 'spec_helper'

describe "rooms/edit.html.haml" do
  before(:each) do
    @room = assign(:room, stub_model(Room,
      :new_record? => false
    ))
  end

  it "renders the edit room form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => room_path(@room), :method => "post" do
    end
  end
end
