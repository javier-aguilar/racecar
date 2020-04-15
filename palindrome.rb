# write a script in this file that finds all numbers between 1 and 1000 that
# when reversed, and added to itself, create a numeric palindrome.

range = (1..1000).to_a

def reverse(num)
  num.to_s.reverse.to_i
end

def numeric_palindrome?(num)
  sum = num + reverse(num)
  sum == reverse(sum)
end

def find_numeric_palindromes(range)
  range.select { | num | num if numeric_palindrome?(num) }
end

p find_numeric_palindromes(range)
