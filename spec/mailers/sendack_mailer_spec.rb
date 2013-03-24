require "spec_helper"

describe SendackMailer do
  describe "accept_request" do
    let(:mail) { SendackMailer.accept_request }

    it "renders the headers" do
      mail.subject.should eq("Accept request")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
