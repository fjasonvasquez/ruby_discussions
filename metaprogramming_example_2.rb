class String
	def censor(bad_word)
		self.gsub! "#{bad_word}", "CENSORED"
	end

	def num_of_chars
		size
	end
end

#p "The bunny was in trouble with the king's bunny".censor("bunny")

#"The CENSORED was in trouble with the king's CENSORED"

p "The bunny was in trouble with the king's bunny".num_of_chars

#returns 46.