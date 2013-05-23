require "spec_helper"

describe Permuter do
  describe ".permute" do
    let(:input) { [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15] }
    subject { Permuter.permute(input)}
    it { should == [0,4,8,12,1,5,9,13,2,6,10,14,3,7,11,15] }
  end
end
