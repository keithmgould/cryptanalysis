class LinearApproximator
  def self.determine_best
    #compute all sbox subs first
    sbox_results = []
    16.times.each do |input|
      sbox_results <<  Sbox.sub()
    end
    #then run through each pair of maskings
    16.times.each do |input|
      16.times.each do |output|
        input_mask = input.to_s(2).split("").map(&:to_i).inject(0) {|sum,x| sum += x}
        output_mask = output.to_s(2).split("").map(&:to_i).inject(0) {|sum,x| sum += x}
        puts "#{input_mask} :: #{output_mask}"
      end
    end

  end
end
