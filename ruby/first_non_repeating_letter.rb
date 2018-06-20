# It is case sensitive
# Returns empty string for empty string as input as well as an input of only
# repeating characters.

def  first_non_repeating_letter(s)
  count = {}

  s.each_char do |char|
    lowercase_char = char.downcase

    if count[lowercase_char]
      count[lowercase_char] += 1
    else
      count[lowercase_char] = 1
    end
  end

  s.each_char do |char|
    lowercase_char = char.downcase

    if count[lowercase_char] == 1
      return char
    end
  end

  ''
end
