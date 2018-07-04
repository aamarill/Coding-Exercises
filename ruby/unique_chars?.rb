# Implement an algorithm to determine if a string has all unique characters.
# Twist: what if you cannot use additional data structures?

# Assumptions:
# String is either populated or empty, but never "nil".

# Could store each value in a set.
# If the value ever already exists, return false and exit function.
# Otherwise return true.
# Gives O(n)
def unique_chars?(str)
  hash_table = {}

  str.each_char do |char|
    if hash_table[char]
      return false
    else
      hash_table[char] = true
    end
  end

  true
end

str1 = ''
str2 = 'qwertyuiopasdfghjkl'
str3 = 'qwertyuioqasdfgh'

p "With hash table"
p unique_chars?(str1)
p unique_chars?(str2)
p unique_chars?(str3)

# Without additional data structures
# Brute force : check each value against the rest of the string
# Gives O(n^2)

# Additionally, you could sort the string (O(n*log n)) and then linearly look
# for repeated characters (O(n)).
# O(n) + O(n*log n) => O(n*log n)
def unique_chars?(str)
  str.each_char.with_index do |char1, i|
    str.each_char.with_index do |char2, j|
      if char1 == char2 && i != j
        return false
      end
    end
  end
  true
end

p "Without additional data structures"
p unique_chars?(str1)
p unique_chars?(str2)
p unique_chars?(str3)
