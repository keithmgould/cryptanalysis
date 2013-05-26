require "spec_helper"
describe Cipher do
  let(:key) { [0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0] }
  let(:starting_value) { [0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1] }
  let(:ending_value)   { [0,1,0,0,0,0,0,1,1,1,1,0,1,1,1,0] }

  describe ".encrypt" do
    subject { Cipher.encrypt(starting_value, key) }
    it { should == ending_value }
  end

  describe ".decrypt" do
    subject { Cipher.decrypt(ending_value, key) }
    it { should == starting_value }
  end
end
