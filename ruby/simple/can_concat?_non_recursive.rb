# Given an array of strings (e.g. ["one", "cat", "two", "four"]) and a target string (e.g. "foobar"), return true if the target string can be composed of elements from the set.
#
# Examples:
# "twoone", {"one", "cat", "two", "four"}  -> True
# "twone", {"one", "cat", "two", "four"}  -> False
# "twotwo", {"one", "cat", "two", "four"}  -> True
# "twotwotwotwotwotwotwotwoonefourfourcatcatfivesix", {"one", "cat", "two", "four", "five", "six"} -> True

def can_concat?(set, target)
  sub_str = ""

  while(target.length > 0)
    sub_str << target[0]
    target[0] = ""
    if set.include?(sub_str)
      return true if target.empty? # reached end of target string
      sub_str = ""
    end
  end

  return false
end

## TESTS
set = ["one", "cat", "two", "four"]
target = "twoone"
puts "TEST 1 PASSED" if can_concat?(set, target)

set = ["one", "cat", "two", "four"]
target = "twooneonetwotwocatfour"
puts "TEST 2 PASSED" if can_concat?(set, target)

set = ["one", "cat", "two", "four"]
target = ""
puts "TEST 3 PASSED" unless can_concat?(set, target)

## NOTES ##

# Assumptions :
#   * Empty string should return false
#   * The set of words are all unique and don't contain each other. For example,
#     this is an invalid set: ["two", "twoone"]
#

## EDGE CASE TEST ##
# set = ["two", "twoone", "x"]
# target = "twoonex"
# puts "tests passed" if can_concat?(set, target)
