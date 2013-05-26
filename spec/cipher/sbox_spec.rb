require "spec_helper"

describe Sbox do
  describe ".sub" do
    let(:start_val) { [0,1,0,1,1,1,1,1,0,0,0,1,0,1,0,0] }
    let(:end_val)   { [1,1,1,1,0,1,1,1,0,1,0,0,0,0,1,0] }
    context "foward" do
      subject { Sbox.sub(start_val, "forward") }
      it { should == end_val }
    end

    context "backward" do
      subject { Sbox.sub(end_val, "backward") }
      it { should == start_val }
    end
  end
end
