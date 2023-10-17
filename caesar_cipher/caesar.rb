require 'pry-byebug'

def cipher_index(index, key)
result = index + key
if result > 25
  result = result - 26
  return result
else
  return result
end
end


def caesar(string, key)
  cipher_arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  arr = string.split('')
  result_arr = []

  arr.each do |item|
    if item.match?(/[a-zA-Z]/)
      if item == item.upcase
        index = cipher_arr.index(item.downcase)
        new_index = cipher_index(index, key)
        result_arr.push(cipher_arr[new_index].upcase)
      else
        index = cipher_arr.index(item)
        new_index = cipher_index(index, key)
        result_arr.push(cipher_arr[new_index])
      end
    else
      result_arr.push(item)
    end
  end

  return result_arr.join
end
