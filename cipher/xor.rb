class Xor
  def self.sum(block_one, block_two)
    raise "block_one not 16 bits" unless block_one.length == 16
    raise "block_two not 16 bits" unless block_two.length == 16
    block_one.zip(block_two).map {|x,y| x^y}
  end
end
