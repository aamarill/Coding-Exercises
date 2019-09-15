# Find the first non-recurring char

# Time complexity is O(N + N) ==> O(2N) ==> O(N)
#   where "N" is the length of the string.

def first_non_recurring_char(str)

  # Get all unique chars and their index
  indeces = {}
  str.split("").each_with_index do |char, i|
    if indeces[char]
      indeces[char] = -1 # -1 means that character is repeated
    else
      indeces[char] = i
    end
  end

  # Find the unique char with the lowest index
  lowest_i = -1 # to start
  indeces.each do |char, i|
    if i > 0 # only check unique chars
      if lowest_i < 0 || i < lowest_i
        lowest_i = i
      end
    end
  end

  lowest_i == -1 ? "" : str[lowest_i]
end

# unit tests
puts first_non_recurring_char("acad")            == "c"
puts first_non_recurring_char("rliwherbfwerfbr") == "l"
puts first_non_recurring_char("aaa")             == ""
puts first_non_recurring_char("fvfwxmklg")       == "v"
puts first_non_recurring_char("")                == ""
