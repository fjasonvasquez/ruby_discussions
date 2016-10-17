#rake routes | grep file_name
#filters file name routes

#irb
# arr = [1, 3, 2, 12, 1, 2, 31]

#arr.grep(1)
# => [1, 1]

#irb
#> ['hey.rb', 'there.rb', 'index.html']
#> arr.select{|x| x =~ /\.rb/}.map{|x| x[0..-4]}
#> ['hey', 'there']
#> arr
#=> ['hey.rb', 'there.rb', 'index.html']
#> arr.grep(/(.*)\.rb/){$1}

#{$1} is not an iterator, but similar, it will grab the last item.  
#It will give the same behavior as the code before. (Not too important.)

#> ['hey', 'there']

#grep is replacing this: ".select{|x| x =~ /\.rb/}.map{|x| x[0..-4]}"
#with this: "arr.grep(/(.*)\.rb/){$1}"