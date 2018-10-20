# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
# Rules
# 1.  The input string will always be lower case but maybe empty.

# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.
# Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

def wave(str)
  result = []
  str = str.split("")
  str.each_with_index do |a,b|
    if str[b] != " "
      temp = []
      str.each_with_index{|x,i| i == b ? temp << x.upcase : temp << x}
      result << temp.join
    end
  end
  puts result
end

wave("hello")