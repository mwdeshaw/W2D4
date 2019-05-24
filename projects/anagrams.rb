def first_char?(string1, string2)
  substrings = []
  char_arr = string1.chars

  perms = char_arr.permutation.to_a
  perms.any? { |anagram| string2.chars == anagram }
end
# p first_char?("gizmo", "sally")    #=> false
# p first_char?("elvis", "lives")    #=> true


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
# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true