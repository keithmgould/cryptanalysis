class Round
  def self.forward(key, state, skip_permuter = false)
    state = Xor.sum(state, key)
    state = Sbox.sub(state)
    skip_permuter ? state : Permuter.permute(state)
  end
end
