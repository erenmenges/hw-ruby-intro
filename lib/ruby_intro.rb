# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum ### idiomatic ruby, or we can just loop over it and sum it in a var 
end

def max_2_sum(arr)
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    new_arr = arr.sort
    new_arr[-1] + new_arr[-2]  ##i don't know if this is the most efficient way but it is working
  end
end

def sum_to_n?(arr, n)
  # this is like two sum from leetcode
  # i was gonna use a set and steal my own solution from leetcode but i'm so tired 
  # and it turns out there's an idiomatic ruby way to do this although in o(n^2)

  arr.combination(2).any? {|a, b| a + b == n}  ### arr.combination is like itertools.combination in python i think
end

# Part 2

def hello(name)
  "Hello, " + name  ### i think we can use string interpolation too but this looks better
end

def starts_with_consonant?(s)
  if s =~ /^[b-df-hj-np-tv-z]/ || s =~ /^[B-DF-HJ-NP-TV-Z]/ ### or just put i at the end 
    true
  else
    false
  end
end

def binary_multiple_of_4?(s)
  if s =~ /^(0|[01]*00)$/ ### we have (option1 OR option2) type of structure here. but it has to end with 00 regardless
    true
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price  ### automatic getter setters!!!
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError, "isbn can't be empty"
    end
    if price <= 0 
      raise ArgumentError, "price can't be negative or 0"
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string()
    output = "%.2f" % self.price ### this is like f string formatting in python
    output = "$" + output
  end
end
