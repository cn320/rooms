require 'spec_helper'


describe StaffsController do
  describe "Can login" do
    before :each do
       @user = mock("Staff", :username => "naidkub", :password=>"honhon")
       Staff.stub(:find_by_username).and_return(@user)
    end
    it "should " do
      Staff.stub(:find_by_username).with("naidkub").and_return(@user)
      post :submit, {:username => "naidkub",:password =>"honhon"}
    end
    it "should " do
      post :submit, {:username => "naidkub",:password =>"honhon"}
      response.should redirect_to staffs_path
    end
  end

  describe "Can not login with blank" do
    before :each do
      @user = mock("Staff", :username => "")
      @result = ""
      Staff.stub(:find_by_username).and_return(@result)
    end
    it "should " do
      Staff.stub(:find_by_username).with("").and_return(@result)
      post :submit, {:username => "",:password =>""}
      response.should redirect_to login_path
    end
  end
  
  describe "Can not login with incorrect pass" do
    before :each do
      @user = mock("Staff", :username => "naidkub", :password=>"honhon")
      Staff.stub(:find_by_username).and_return(@user)
    end
    it "should " do
      Staff.stub(:find_by_username).with("naidkub").and_return(@user)
      post :submit, {:username => "naidkub",:password =>"homhom"}
      response.should redirect_to login_path
    end
  end
  
  describe "Can not login with invalid username" do
    before :each do
      @user = mock("Staff", :username => "naidkub", :password=>"honhon")
      @result=nil
      Staff.stub(:find_by_username).and_return(@user)
    end
    it "should " do
      Staff.stub(:find_by_username).with("koon").and_return(@result)
      post :submit, {:username => "koon",:password =>"milk"}
      response.should redirect_to login_path
    end
  end
end
