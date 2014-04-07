# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? .to_a tell the computer that we want a range from the letters A to Z.
# 2. How does the rotate method work? What does it work on? rotate is similar to reverse, but instead of reversing the order it just moves them a bit. the number 4 is assigned to rotate which gives it a specific instrucion on how to rotate the letters in the sentences we are encrypting.
# 3. What is `each_char` doing? It tells the computer what to do to each character but making them elements. 
# 4. What does `sample` do? sample returns a random element. 
# 5. Are there any other methods you want to understand better?
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? This code is worse that the refactored code we worked on, only because I feel that this can be refactored more. 
# 7. Is this good code? What makes it good? What makes it bad?This code is good. It does what it is supposed to do. But after looking at the refactored code that I worked on with Kevin, this code looks messy. I feel a lot of things can be written cleaner and with less code. 


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

# Both cypher methods have been very enlightening to work with. part of my wants to say that I don't think I could have been able to write one myself, but I feel that is a lie.
# my learning style is just different from some of the people I have worked with. I need to have a bunch of resources at my finger tips to see what I am doing and what tactics I
# can use in my code. seeing a code that deciphers random text and symbols and one tht randomizes one is interesting. I feel my codes work in other excercises but that there is a better way to write them
# or configure them.

