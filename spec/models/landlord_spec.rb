require 'spec_helper'

describe Landlord do

  before { @landlord = Landlord.new(name: "Example User", email: "user@example.com", mobile_No: "+254728111111", location: "karatina", national_id: "1111111") }

  subject { @landlord }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
it { should respond_to(:mobile_No) }
it { should respond_to(:location) }
it { should respond_to(:national_id) }

it { should be_valid }

  describe "when name is not present" do
    before { @landlord.name = " " }
    it { should_not be_valid }
  end
describe "when name is not present" do
    before { @landlord.email = " " }
    it { should_not be_valid }
  end
describe "when name is not present" do
    before { @landlord.mobile_No = " " }
    it { should_not be_valid }
  end
describe "when name is not present" do
    before { @landlord.location = " " }
    it { should_not be_valid }
  end
describe "when name is not present" do
    before { @landlord.national_id = " " }
    it { should_not be_valid }
  end

describe "when name is too long" do
    before { @landlord.name = " a " * 30 }

    it { should_not be_valid }
  end

describe "when national_id is too long" do
    before { @landlord.national_id = " a " * 9 }

    it { should_not be_valid }
 
end

describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[landlord@foo,com landlord_at_foo.org example.landlord@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @landlord.email = invalid_address
        @landlord.should_not be_valid
      end      
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[landlord@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @landlord.email = valid_address
        @landlord.should be_valid
      end      
    end
  end
describe "when email address is already taken" do
    before do
      landlord_with_same_email = @landlord.dup
 landlord_with_same_email.email = @landlord.email.upcase
      landlord_with_same_email.save
    end

    it { should_not be_valid }
  end
















end
