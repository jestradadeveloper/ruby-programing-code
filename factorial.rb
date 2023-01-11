class Factorial
  def self.get_factorial(num)
    return 1 if num.zero? || num == 1

    (2..num).reduce(1, :*)
  end
end

puts Factorial.get_factorial(2)
x = [{ 'a' => 10 }, { 'b' => 20 }, { 'c' => 30 }]
y = x.reduce(:merge)
z = y.keys
puts z
sum = y.values.inject(:+)
puts sum
array = [10, 7, 5, 8, 11, 9]
result = array.reduce(0) { |sum, num| sum + num }
puts result
