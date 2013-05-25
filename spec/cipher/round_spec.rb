require "spec_helper"

describe Round do
  let(:key) { [0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1] }
  let(:starting_point) { [1,1,1,0,0,0,1,1,0,1,1,1,1,0,1,0] }
  let(:after_full_round) { [1,1,1,0,1,0,1,1,0,1,0,1,0,1,1,1] }
  let(:after_partial_round) { [1,1,0,0,1,0,1,1,1,1,0,1,0,1,1,1] }
  describe ".forward" do
    context "don't skip Permuter" do
      subject { Round.forward(key, starting_point) }
      it { should == after_full_round }
    end

    context "skip Permuter" do
      subject { Round.forward(key, starting_point, true) }
      it { should == after_partial_round }
    end
  end

  describe ".backward" do
    context "don't skip Permuter" do
      subject { Round.backward(key, after_full_round) }
      it { should == starting_point }
    end
    context "skip Permuter" do
      subject { Round.backward(key, after_partial_round, true) }
      it { should == starting_point }
    end
  end
end
