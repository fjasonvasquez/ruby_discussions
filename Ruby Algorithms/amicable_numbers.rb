require 'mathn'

class Integer
	def dsum
		return 1 if self < 2

		pd = prime_division.flat_map{ |n, p| [n]*p }

		([1] + (1...pd.size).flat_map{ |e| pd.combination(e).map{ |f| f.reduce(:*) }}).uniq.inject(:*)
	end
end