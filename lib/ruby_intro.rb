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
#Define a method hello(name) that takes a string representing a name 
#and returns the string "Hello, " concatenated with the name.  
def hello(name)
  "Hello, " + name
end

#Define a method starts_with_consonant?(s) that takes a string and returns
#true if it starts with a consonant and false otherwise. (For our purpose,
#a consonant is any letter other than A, E, I, O, U.) Note: be sure it works
#for both upper and lower case and for nonletters.
def starts_with_consonant?(s)
 !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

#Define a method binary_multiple_of_4?(s) that takes a string and returns
#true if the string represents a binary number that is nultiple of 4. 
#NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s)
   is = s.to_i
    if s == "0"
       true
    elsif /[a-zA-Z^$3-9*]/.match(s)
       false
    else
      if /^[10]*00$/.match(s) && is % 2 == 0
         true
      else
         false
      end
    end
    
    #return true if s == "0"
  	#/^[10]*00$/.match(s) != nil
end

=begin
Part 3
Define a class "BookInStore" which represents a book with an ISBN
number, "isbn", and price of the book as a floating-point number, 
"price", as attributes.

The constructor should accept the ISBN number
(a string, since in real life ISBN numbers can begin with zero and can
include hyphens) as the first argument and price as second argument, and
should raise `ArgumentError` (one of Ruby's built-in exception types) if
the ISBN number is the empty string or if the price is less than or
equal to zero.  Include the proper getters and setters for these
attributes. Run associated tests via:  `$ rspec -e 'constructor' spec/part3_spec.rb`

Include a method `price_as_string` that returns the price of
the book formatted with a leading dollar sign and two decimal places, that is, a price
of 20 should format as "$20.00" and a price of 33.8 should format as
"$33.80". Run associated tests via:  `$ rspec -e '#price_as_string' spec/part3_spec.rb`

You can check your progress on the all the above by running `rspec spec/part3_spec.rb`.
=end
class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if ( isbn.empty? || price <= 0)
  end

  def price_as_string
    "$%.2f" % price
  end
end
