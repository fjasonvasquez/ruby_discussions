#n! means n x (n-1) x...x 3 x 2 x 1

def factorial_value_sum_generator(factorial)
	arr = (1..factorial).to_a.reverse.each { |i| factorial += factorial * (i - 1) }
	factorial.to_s.split(//).map(&:to_i).inject(:+)
end

p factorial_value_sum_generator(100)

