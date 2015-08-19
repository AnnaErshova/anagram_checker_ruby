def is_anagram?(string_1, string_2)
  string_1.chars.sort.join == string_2.chars.sort.join ? true : false
end