#all? 
all_odd = [1,3].all? do |number|
  number.odd? # Will evaluate to true for 1, true for 3
end #=> true
all_odd #=> true
#The rule for the #all? enumerator is that the block passed to it must return true for every iteration for the entire #all? expression or method to return true. If we introduce an even number to the collection, the return value will change.


#none?
[1,3].none?{|i| i.even?} #=> true
#Imagine the opposite of #all?, a method #none?, where we are interested in none of the elements in a collection producing a true expression within the block passed to #none?.
#To recap, if any of the elements in the collection evaluate to true when passed to the block, #none? will return false. If none of the elements evaluate to true, #none? will return true.


#any?
[1,2,100].any?{|i| i > 99} #=> true
#The #any? expression above will return true because at least one element, 100, will produce a true evaluation in the block.


#include?
the_numbers = [4,8,15,16,23,42]
the_numbers.include?(42)   #=> true
the_numbers.include?(6)   #=> false
##include? will return true if the given object exists in the element. If it doesn't find a match, it will return false.

