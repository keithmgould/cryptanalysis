class KnownPairGenerator
  def self.generate(key, pair_count)
    pairs = []
    pair_count.times do |i|
      print "." if i % 100 == 0
      input = 16.times.map { rand 2 }
      pairs << {plain: input, cipher: Cipher.encrypt(input, key)}
    end
    puts ""
    pairs
  end
end
