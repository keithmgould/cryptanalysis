class Permuter
  def self.permute(input)
    raise "input not 16 bits" unless input.length == 16
    16.times.map { |i| input[PERMUTATION[i]] }
  end
end
