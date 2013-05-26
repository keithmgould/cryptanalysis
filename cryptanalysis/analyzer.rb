class Analyzer
  def initialize(known_pairs)
    @known_pairs = known_pairs
  end

  def run_through_known_pairs
    @matches = {}
    @known_pairs.each_with_index do |known_pair, index|
      print "#{index}." if index % 100 == 0
      plain = known_pair[:plain]
      cipher = known_pair[:cipher]
      16.times do |sbox42_key|
        xor42 = sbox42_key ^ cipher[4,4].join.to_i(2)
        unsub42 = SBOXBACKWARD[xor42].hex_to_binary_array
        16.times do |sbox44_key|
          @matches["#{sbox42_key}-#{sbox44_key}"] ||= 0
          xor44 = sbox44_key ^ cipher[12,4].join.to_i(2)
          unsub44 = SBOXBACKWARD[xor44].hex_to_binary_array
          if unsub42[1] ^ unsub42[3] ^ unsub44[1] ^ unsub44[3] ^ plain[4] ^ plain[6] ^ plain[7] == 0
            @matches["#{sbox42_key}-#{sbox44_key}"] += 1
          end
        end
      end
    end
    true
  end

  def sorted_matches
    @matches.sort { |x,y| (y[1] - 5000).abs <=> (x[1] - 5000).abs }
  end

end
