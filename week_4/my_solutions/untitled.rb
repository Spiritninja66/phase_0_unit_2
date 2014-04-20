# array=["Adeoye", "Brittaney", "Chantelle", "Charu", "Danielle", "David", "Dinesh", "Gregory", " Ian", "Jake", "Jason", "Jessica", "John", "Judy", "Justin", "Kai", "Ken", "Kennedy", "Kevin", "Lasse", "Natalie", "Nick", "Samuel", "Timothy"]
# 	array.shuffle.each_slice(4).to_a do |str, idx|
#     puts ("#{str}, #{array[idx-1]}, #{array[idx-2]}, #{array[idx-3]}")
# end
def group(names)
	units = []
	3.times do
		names = names.shuffle
		remainder = []
		count = names.length % 4
		count.times do
			remainder << names.shift
		end
		

		groupsArray = names.each_slice(4).to_a
		while count != 0
			groupsArray[count-1] << remainder.shift
			count -= 1
		end
		units << groupsArray
	end
	return units
end

sample=["Adeoye", "Brittaney", "Chantelle", "Charu", "Danielle", "David", "Dinesh", "Gregory", " Ian", "Jake", "Jason", "Jessica", "John", "Judy", "Justin", "Kai", "Ken", "Kennedy", "Kevin", "Lasse", "Natalie", "Nick", "Samuel", "Timothy","dog"]

   print group(sample)


