require 'spec_helper'

describe "Client pages" do

  subject { page }

  describe "profile  page" do
    

let(:client) { FactoryGirl.create(:client) }
    before { visit logup_path (client) }

    it { should have_selector('h1',    text: client.name) }
    it { should have_selector('title', text: client.name) }
  end



describe "logup" do

    before { visit logup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(Client, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
fill_in "mobile_No",        with: "2547288544262"
fill_in "Address",        with: "234567"
fill_in "postcode",        with: "10101"


      end

      it "should create a user" do
        expect { click_button submit }.to change(Client, :count).by(1)
      end
    end
  end


end
