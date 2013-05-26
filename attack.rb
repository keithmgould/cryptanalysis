require "./init.rb"

unknown_key = 80.times.map { rand 2 }
puts "building 10,000 known pairs..."
known_pairs = KnownPairGenerator.generate(unknown_key, 10000)

puts "processing 10,000 known pairs..."
analyzer = Analyzer.new(known_pairs)
analyzer.run_through_known_pairs

puts "Here are the sorted best 10 results from analysis:"
analyzer.sorted_matches.first(10).each do |pair|
  puts "#{pair[0]}: #{pair[1]} => #{(pair[1].to_f - 5000).abs / 10000}"
end

puts "unknown subkey 5 bits 4-7: #{unknown_key[68,4]}"
puts "unknown subkey 5 bits 12-15: #{unknown_key[76,4]}"

puts "If this worked, the top result from analysis reveals the same amount (in base16) as the unknown subkeys."
