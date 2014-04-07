# U2.W4: Title here


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# def seperate comma.
# use parameters of number and delimiter. 
# write a method that would add a comma only to an output with 4 numbers and none with 3 numbers.



# 3. Initial Solution
def random_num(min, max)
   rand(max - min + 1) + min
end
def separate_comma(number, delimiter = ',')
  new = number.to_s.reverse.scan(/.../).join(delimiter)
end




# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE
describe "seperate_comma" do
   it "returns no comma, when the integer is smaller than 1000" do
      separate_comma(random_num(0, 999)).should match /^\d{1,3}$/
   end
   it "returns one comma, when the integer is between 1000 and 999999" do
      separate_comma(random_num(1000, 999999)).should match /^\d{1,3},\d{3}$/
   end
   it "returns two commas, when the integer is between 1000000 and 999999999" do
      separate_comma(random_num(1000000, 999999999)).should match /^\d{1,3},\d{3},\d{3}$/
   end
end





# 5. Reflection 

# This code took some time. I had to do a bit of research. I knew I wanted to add a comma to a series of number but wasn't sure how to at first.
#    most of the code was already written out, I just had to define separate comma and write the method for it. I used some different techniques.
#    This one had me struggle a little and I did ask for help from a friend that had done coding before. 
