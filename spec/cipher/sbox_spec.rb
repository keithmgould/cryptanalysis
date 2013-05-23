require "spec_helper"

describe Sbox do
  describe ".sub" do
    let(:input) { [0,1,0,1,1,1,1,1,0,0,0,1,0,1,0,0] }
    subject { Sbox.sub(input) }
    it { should == [1,1,1,1,0,1,1,1,0,1,0,0,0,0,1,0] }
  end
end
