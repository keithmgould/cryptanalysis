require "spec_helper"

describe Sbox do
  describe ".sub" do
    context "foward" do
      let(:input) { [0,1,0,1,1,1,1,1,0,0,0,1,0,1,0,0] }
      subject { Sbox.sub(input, "forward") }
      it { should == [1,1,1,1,0,1,1,1,0,1,0,0,0,0,1,0] }
    end

    context "backward" do
      let(:input) { [1,1,1,1,0,1,1,1,0,1,0,0,0,0,1,0] }
      subject { Sbox.sub(input, "backward") }
      it { should == [0,1,0,1,1,1,1,1,0,0,0,1,0,1,0,0] }
    end
  end
end
