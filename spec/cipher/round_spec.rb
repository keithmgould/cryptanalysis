require "spec_helper"

describe Round do
  let(:key) {   [0,1,0,1,0,1,0,1,0,1,0,1,0,1,0] }
  let(:input) { [1,1,1,0,0,0,1,1,0,1,1,1,1,0,1] }

  context "don't skip Permuter" do
    subject { Round.forward(key, input) }
    it { should == [1,1,1,1,1,0,1,0,0,1,0,0,0,1,1,0] }
  end

  context "skip Permuter" do
    subject { Round.forward(key, input, true) }
    it { should == [1,1,0,0,1,0,1,1,1,1,0,1,1,0,0,0] }
  end

end
