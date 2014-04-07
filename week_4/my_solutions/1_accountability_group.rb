# U2.W4: Title here


# I worked on this challenge [by myself ].

# 2. Pseudocode

# define array.
# set paramaters as group.
# write a method for group that will take a string of arrays and produce a random list of people in 6 different groups of 4.


# 3. Initial Solution
# def array(group)
# 	@group=group
# 	@group.shuffle.each_slice(4).to_a do |str, idx|
#     puts ("#{str}, #{array[idx-1]}, #{array[idx-2]}, #{array[idx-3]}")
# end



# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE
#p array(["Adeoye", "Brittaney", "Chantelle", "Charu", "Danielle", "David", "Dinesh", "Gregory", " Ian", "Jake", "Jason", "Jessica", "John", "Judy", "Justin", "Kai", "Ken", "Kennedy", "Kevin", "Lasse", "Natalie", "Nick", "Samuel", "Timothy"])





# 5. Reflection 
# I am having difficulty with my code. I am not sure why it isn't working. I believe it may have to do with my driver code. I don't fully understand 
# what it is supposed to look like for an array of strings. I also feel I may be missing something from my code. I have run a simpler version of  my
# code in irb and it does output the list I want.

array=["Adeoye", "Brittaney", "Chantelle", "Charu", "Danielle", "David", "Dinesh", "Gregory", " Ian", "Jake", "Jason", "Jessica", "John", "Judy", "Justin", "Kai", "Ken", "Kennedy", "Kevin", "Lasse", "Natalie", "Nick", "Samuel", "Timothy","dog"]
array=array.shuffle.each_slice(4).to_a do 
    puts array
end

# When I run this code in irb with the out put, I generate a random list of people each time. There are no repeated names either. I am just missing
# on how do do that with a driver code and formatting the code properly. 




