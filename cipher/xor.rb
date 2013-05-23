class Xor
  def self.sum(block_one, block_two)
    block_one.zip(block_two).map {|x,y| x^y}
  end
end
