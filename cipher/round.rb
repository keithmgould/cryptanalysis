class Round
  def self.forward(key, state, skip_permuter = false)
    raise "key not 16 bits" unless key.length == 16
    raise "state not 16 bits" unless state.length == 16
    state = Xor.sum(state, key)
    state = Sbox.sub(state, "forward")
    skip_permuter ? state : Permuter.permute(state)
  end

  def self.backward(key, state, skip_permuter = false)
    raise "key not 16 bits" unless key.length == 16
    raise "state not 16 bits" unless state.length == 16
    state = skip_permuter ? state : Permuter.permute(state)
    state = Sbox.sub(state, "backward")
    Xor.sum(state, key)
  end
end
