require 'spec_helper'

describe House do
  before { @house = House.new(location: " karatina ", category: "bungalow", price:"22000", description: " weeee       rrrrrrr tytyty ") }

  subject { @house }

  it { should respond_to(:location) }
  it { should respond_to(:category) }
 it { should respond_to(:price) }
 it { should respond_to(:description) }

it { should be_valid }

  describe "when name is not present" do
    before { @house.location = " " }
    it { should_not be_valid }
  end
it { should be_valid }

  describe "when name is not present" do
    before { @house.category = " " }
    it { should_not be_valid }
  end
it { should be_valid }

  describe "when name is not present" do
    before { @house.price = " " }
    it { should_not be_valid }
  end
it { should be_valid }

  describe "when name is not present" do
    before { @house.description = " " }
    it { should_not be_valid }
  end



end
