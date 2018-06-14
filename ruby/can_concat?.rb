'''
Given a set of strings, {"one", "cat", "two", "four"} and a target string, return true if the target string is composed of elements from the set.

"twoone", {"one", "cat", "two", "four"}  -> True
"twone", {"one", "cat", "two", "four"}  -> False
"twotwo", {"one", "cat", "two", "four"}  -> True
"twotwotwotwotwotwotwotwoonefourfourcatcatfivesix", {"one", "cat", "two", "four", "five", "six"} -> True
'''

# check if target strings begins with current string
# if it does, then

# Go char by char until a matching word is found.
# if no words match => return false
# else repeat

# prefix?


def can_concat?(set, target)
  temp = ""
  target.each_char.with_index do |char, i|

    temp << char

    if set.include?(temp)
      if i == target.length - 1
        return true
      else
        if can_concat?(set, target.slice(i + 1, target.length - 1))
          return true
        end
      end

    end


  end # end of loop

  return false

end

target = "twoonex"
set = ["two", "twoone", "x"]

# prefix=two, can_concat?("onex", set)
# prefix=twoonex, can_concat?("x", set)
p can_concat?(set, target)

# need to try matching both two and twoone
# can_concat?(set, "onex") -> can_conat(set, "x")
