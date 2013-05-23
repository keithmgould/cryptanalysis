class Permuter
  def self.permute(input)
    16.times.map { |i| input[PERMUTATION[i]] }
  end
end
