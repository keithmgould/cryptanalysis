require "spec_helper"

describe Xor do
  let(:input) { [1,1,1,1,0,1,1,1,0,1,0,0,0,0,1,0] }
  let(:key)   { [0,1,0,1,1,1,1,1,0,0,0,1,0,1,0,0] }
  describe ".sum" do
    it "performs xor sum across the two blocks" do
      Xor.sum(input, key).should == [1,0,1,0,1,0,0,0,0,1,0,1,0,1,1,0]
    end
  end
end
