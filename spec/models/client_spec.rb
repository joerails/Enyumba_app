require 'spec_helper'

describe Client do

before do

    @client = Client.new(name: "Example User", email: "user@example.com" ,mobile_No: "122222" , address: "22222222" , post_code: "4444444" , password_confirmation: "foobar")
  
end

subject { @client}

  it { should respond_to(:name) }
  it { should respond_to(:email) }

it { should respond_to(:mobile_No) }
it { should respond_to(:address) }
it { should respond_to(:post_code) }

it { should respond_to(:password) }
it { should respond_to(:password_digest) }
  it { should respond_to(:password_confirmation) }
it { should respond_to(:authenticate) }

  it { should be_valid }


  describe "when name is not present" do
    before { @client.name = " " }
    it { should_not be_valid }
  end

describe "when mobile_No is not present" do
    before { @client.mobile_No = " " }
    it { should_not be_valid }
  end

describe "when name is too long" do
    before { @client.name = "a" * 30 }
    it { should_not be_valid }
  end
describe "when mobile_no is too long" do
    before { @client.mobile_No = "a" * 13 }
    it { should_not be_valid }
  end


describe "when email address is already taken" do
    before do
      client_with_same_email = @client.dup
client_with_same_email.email = @client.email.upcase
      client_with_same_email.save
    end

    it { should_not be_valid }
  end


describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[client@foo,com client_at_foo.org example.client@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @client.email = invalid_address
        @client.should_not be_valid
      end      
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[client@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @client.email = valid_address
        @client.should be_valid
      end      
    end
  end

describe "when password is not present" do
  before { @client.password = @client.password_confirmation = " " }
  it { should_not be_valid }
end
describe "when password doesn't match confirmation" do
  before { @client.password_confirmation = "mismatch" }
  it { should_not be_valid }
end
describe "when password confirmation is nil" do
  before { @client.password_confirmation = nil }
  it { should_not be_valid }
end

describe "return value of authenticate method" do
  before { @client.save }
  let(:found_client) { Client.find_by_email(@client.email) }

  describe "with valid password" do
    it { should == found_client.authenticate(@client.password) }
  end

  describe "with invalid password" do
    let(:client_for_invalid_password) { found_client.authenticate("invalid") }

    it { should_not == client_for_invalid_password }
    specify { client_for_invalid_password.should be_true }
  end

end
end

