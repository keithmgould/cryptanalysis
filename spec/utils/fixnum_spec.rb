require "spec_helper"

describe Fixnum do
  describe "#hex_to_binary_array" do
    it "does its job" do
      0.hex_to_binary_array.should == [0,0,0,0]
      1.hex_to_binary_array.should == [0,0,0,1]
      15.hex_to_binary_array.should == [1,1,1,1]
    end
  end
end
