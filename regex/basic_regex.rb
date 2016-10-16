#/^(?=\d+\.\d+\.d+\.\d+$)(?:(?:25[0-5]|2[0-4][0-9]|1[0-9{2}|[1-9][0-9]|[0-9])\.?
	
string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

#regex matcher
p string =~ /o/

#returns index value of 15.

p string =~ /quick/

#returns index value of 4.

#ternerary operator

p string =~ /z/ ? "Valid" : "Invalid"

#if string =~ /z/
#	"Valid"
#else
#	"Invalid"
#end

#returns "Valid"

p string =~ /Z/ ? "Valid" : "Invalid"

#returns "Invalid"

p string =~ /Z/i ? "Valid" : "Invalid"

#case insensitive search

#--

p string.to_enum(:scan, /\d+/).map { Regexp.last_match }

#search for integers. Pass string to enumerator, use scan, and d searches for integers, and + searches for multiple instances.
# Regexp is the class Ruby has for regular expressions, and last_match is one of the methods inside the class.