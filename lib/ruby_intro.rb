# When done, submit this entire file to the autograder.

# Part 1

def sum(arr) arr.reduce(&:+) end

def max_2_sum(arr)
  if (arr.length == 0)
    0
  end
  if (arr.length == 1)
    arr[0]
  end
    arr.sort!.reverse!
    arr[0] + arr[1]
end

def sum_to_n?(vals,val)
  vals.combination(2).any? do |x,y|
    if (val == x+y) 
      return true
    end
    return false
  end
end


# Part 2
def hello(name)
puts "Hello, #{name}"
end

def starts_with_consonant?(s)
s.downcase!
test = s[0]
  if (test == "a" ) || (test == "e") || (test == "i") || (test == "o") || (test == "u")
    return false
  end
  return true
end

def binary_multiple_of_4?(s)
test = s
  if (test.delete('01') != '')
    return false
  end
  if (s.to_i(2) % 4 != 0)
    return false
  end
  return true
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if (isbn.empty? = true)
      raise ArgumentError.new("ISBN must be a string")
  end
    if (price <= 0)
      raise ArgumentError.new("Price must be above 0")
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end
    def price_as_string
      sprintf("$%2.2f", @BookInStore.price)
end
