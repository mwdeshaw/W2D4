def first_char?(string1, string2)
  
end


def second_anagram?(string1, string2)
  return false if string1.length != string2.length
  chars_2 = string2.chars

  string1.chars.each do |char|
    idx = chars_2.index(char)
    return false if idx == nil

    chars_2.delete_at(idx)
  end

  return true if chars_2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true





 # substrings = []
  # (0...string1.length-1).each do |i|
  #   (i+1...string1.length).each do |j|
  #     substrings << string1[i..j]
  #   end
  # end
  # p substrings