
# pass through the hash. set quantity equal to number of people / value.
def bakery_num(num_of_people, fav_food)
    fav_food = {"pie" => 8, "cake" => 6, "cookie" => 1} # my_list is a hash. Numbers tell how much each food feeds.
    pie_qty = 0 # initializing values
    cake_qty = 0
    cookie_qty = 0
  
    has_fave = false # boolean value for favorite

    my_list.each_key do |k| #loop checks to see if any inputs are favorite food.
        if k == fav_food
            has_fave = true # if inputs are from favorite food, equals true.
            #fav_food = k 
        end
    end
    if has_fave == false #if value isn't a favorite food, the argument is raised. #redundant?
        raise ArgumentError.new("You can't make that food")
    else
        fav_food_qty = my_list.values_at(fav_food)[0] #Checks the key of favorite food. Sets to value associeted with key.
        if num_of_people % fav_food_qty == 0 #looking for the remainder of people divided by favorite food quantity. 
            num_of_food = num_of_people / fav_food_qty #Checks to see if number is equally divisible. Then sets number for what is returned
            return "You need to make #{num_of_food} #{fav_food}(s)."# tells how much food needs to be made.
        #else num_of_people % fav_food_qty != 0
       my_list.each_value do |k| #
       # while num_of_people > 0 
            if num_of_people / my_list["pie"] > 0 #
                pie_qty = num_of_people / my_list["pie"]
                num_of_people = num_of_people % my_list["pie"]
            elsif num_of_people / my_list["cake"] > 0
                cake_qty = num_of_people / my_list["cake"]
                num_of_people = num_of_people % my_list["cake"]
            else
                cookie_qty = num_of_people
                num_of_people = 0
            end
        end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
        end
    end
end
 
 
 #driver code
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!