require 'spec_helper'

describe RoomsController do
  describe "Search Available Room That You Want With Volume" do
    before :each do
      @avai_room1 = mock("Room", :roomname => "ENGR303", :volume=>"30", :day=>"monday", :fifth=>"busy",:sixth =>"free")
      @avai_room2 = mock("Room", :roomname => "ENGR313", :volume=>"30", :day=>"monday", :fifth=>"free",:sixth =>"free")
      @avai_room3 = mock("Room", :roomname => "ENGR323", :volume=>"50", :day=>"monday", :fifth=>"free",:sixth =>"free")
      Room.stub(:find_by_roomname).and_return(@avai_room1)
      Room.stub(:find_by_roomname).and_return(@avai_room2)
      Room.stub(:find_by_roomname).and_return(@avai_room3)
      @avai_room = [@avai_room1,@avai_room2,@avai_room3]
    end
    it "Should return the smallest room'volume in day with select time section" do
      Room.stub(:find_all_by_day).with("monday").and_return(@avai_room)
    end
  end
end
