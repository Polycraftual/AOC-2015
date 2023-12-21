require 'digest'

seed = input = File.open("./input.txt").read

number = 0
result = Digest::MD5.hexdigest(seed+number.to_s)

until (result.start_with?"000000") == true
    number = number +1
    result = Digest::MD5.hexdigest(seed+number.to_s)
end

pp number
pp result