class LinearApproximator
  def self.determine_best
    matches = {}
    16.times.each do |input|
      output = SBOXFORWARD[input]
      16.times.each do |input_mask|
        input_xor_mask_sum = xor_mask_sum(input_mask, input)
        16.times.each do |output_mask|
          output_xor_mask_sum = xor_mask_sum(output_mask, output)
          if input_xor_mask_sum == output_xor_mask_sum
            if matches[[input_mask, output_mask]]
              matches[[input_mask, output_mask]] += 1
            else
              matches[[input_mask, output_mask]] = 1
            end
          end
        end
      end
    end
    matches
  end

  def self.pretty_print(matches)
    puts "    0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15"
    16.times.each do |input|
      print " " if input < 10
      print "#{input}:"
      16.times.each do |output|
        result = matches[[input,output]] - 8
        print " " if result >= 0
        print "#{result}"
        print "," if output < 15
      end
      puts ""
    end
    "Left is input sum.  Top is output sum"
  end

  private

  def self.xor_mask_sum(mask, subject)
    mask_array = mask.to_s(2).split("").map(&:to_i)
    subject_array = subject.to_s(2).split("").map(&:to_i)
    total = 0
    4.times do |i|
      total = total ^ subject[i] if mask[i] == 1
    end
    total
  end
end
