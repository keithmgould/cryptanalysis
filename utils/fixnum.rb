class Fixnum
  def hex_to_binary_array
    sprintf("%04d", self.to_s(2)).split("").map(&:to_i)
  end
end
