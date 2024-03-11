def fibonnacci_up_to(max)
  i1, i2 = 1, 1 # parallel assignment i1 = 1 and i2 = 1
  while i1 <= max
    yield i1 # yield is used to call the block
    i1, i2 = i2, i1 + i2 # parallel assignment i1 = i2 and i2 = i1 + i2
  end
end

fibonnacci_up_to(1000) { |f| print f, " " } # => 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987
puts
fibonnacci_up_to(1000) { print _1, " " } # => 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987
