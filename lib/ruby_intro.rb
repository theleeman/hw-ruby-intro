# When done, submit this entire file to the autograder.

# Part 1
#Define a method sum(arr) that takes an array of integers 
#as an argument and returns the sum of its elements. 
#For an empty array it should return zer. 
def sum(arr)
  sum = 0
  
  sum if arr.length == 0
  arr.each do |x|
      sum += x
  end
  sum
end

#Define a method max_2_sum(arr) which takes an array of integers
#as an argument and returns the sum of its two largest elements. 
#For an empty array it should return zero. For an array with just one
#element, it should return that element. 
def max_2_sum(arr)
  arr = arr.sort
  sum = 0
  
  if arr.length == 0
     sum
  elsif arr.length == 1
     arr[0]
  else
    sum =  arr[(arr.length - 1)] + arr[(arr.length - 2)] 
  end
end


#Define a method sum_to_n(array,n) that takes an array of integers and an additional 
#integer, n, as arguments and returns true if any two elements in the array of integers sum to n
def sum_to_n?(arr, n)
  
  if arr.length < 2
    false
  else
    arr.permutation(2).any? {|x, y| x + y == n}
    
  end
end



# Part 2
=begin
def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
=end