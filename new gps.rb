
def bakery_num(num_of_people, fav_food) # Defined method, with number of people and favorite food as input.
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # This is what the bakery has to offer and serving size of each favorite food.
  need_to_make = {} #Empty hash to be filled with food order.
  
  if num_of_people % my_list[fav_food] == 0 #If the serving size can meet the need of the number of people, without remainders, the if statement will return the amount of favorite food needed.
    num_of_food = num_of_people / my_list[fav_food]
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else
    start_found = false #Setting a default value, which determines which portion of the following if statement runs.
    my_list.each do |k, v|
      start_found = true if k == fav_food #This evaluates the current key to fav_food. If it matches, start_found is set to true.
      if start_found == false #When start_value is not found, current key is appended into the need to make hash with a value of 0.
        need_to_make[k] = 0
      else #When start_value is found, the current key is appended into the need_to_make hash with the maximum of the current food item, without leaving a remainder.
        need_to_make[k] = (num_of_people / my_list[k])
        num_of_people %= v #Taking the remainer, and changing the num_of_people that need to still be fed.
      end
    end
  end
  return "You need to make #{need_to_make["pie"]} pie(s), #{need_to_make["cake"]} cake(s), and #{need_to_make["cookie"]} cookie(s)."
end







#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

#  Reflection 
=begin
  This was a difficult challenge for me. I generally take a bit of time to slowly
  think through how to fix a problem in a challenge, but when pairing with someone
  it's hard for me to keep up with the other persons thought process. In this situation,
  Devin was very confident and had a good idea of some ideas to refractor the code.
  In the end, I understood every aspect of the code and what it was for, but I don't think I would have
  ever been able to come up with that code on my own. Hopefully, with more time to study this 
  stuff once I get to DBC in New York, I'll be able to keep up with the others in my cohort.
=end
  
end