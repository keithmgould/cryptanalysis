PERMUTATION =  [0,4,8,12,1,5,9,13,2,6,10,14,3,7,11,15]
SBOXFORWARD =  [14,4,13,1,2,15,11,8,3,10,6,12,5,9,0,7]
SBOXBACKWARD = [14,3,4,8,1,12,10,15,7,13,9,6,11,2,0,5]

Dir.glob(File.join(File.dirname(__FILE__), './cipher/*.rb')).each {|f| require f }
Dir.glob(File.join(File.dirname(__FILE__), './lincrypter/*.rb')).each {|f| require f }

