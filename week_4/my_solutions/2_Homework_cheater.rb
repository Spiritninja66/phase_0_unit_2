def essay_writer(title, topic, date, thesis)
    @title = title
    @topic = topic
    @date = date
    @thesis = thesis
    puts "#{title}."
    puts "#{topic} was a very powerful person. They were born in #{date}. #{thesis} "
  end

















# U2.W4: Essay Writter


# I worked on this challenge [myself ].

# 2. Pseudocode

# define essay writer.
# use paramaters of title, topic, date, and thesis.
# output paragraph using parameters to create paragraph on subject.
# end.




# 3. Initial Solution
def essay_writer(title, topic, date, thesis)
    @title = title
    @topic = topic
    @date = date
    @thesis = thesis
    puts "#{title}."
    puts "#{topic} was a very powerful person. They were born in #{date}. #{thesis} "
  end




# 4. Refactored Solution
def essay_writer(title, topic, date, thesis)
    @title = title, @topic = topic, @date = date, @thesis = thesis
    puts "#{title}."
    puts "#{topic} was a very powerful person. They were born in #{date}. #{thesis} "
  end








# 1. DRIVER TESTS GO BELOW THIS LINE
p essay_writer("Important people", "Christopher Nolan", 1970, "Christopher Jonathan James Nolan (/ˈnoʊlən/; born 30 July 1970)[1] is a British–American film director, screenwriter and producer. Nolan created several of the most successful films of the early 21st century, and his eight pictures have grossed more than $3.5 billion worldwide.[2] He is known for bridging the gap between art house and blockbuster films by presenting audiences with intelligent, challenging narratives.")

p essay_writer("Important people","Chuck Palahniuk", 1962,"Charles Michael  Palahniuk (/ˈpɔːlənɪk/;[1] born February 21, 1962) is an American novelist and freelance journalist, who describes his work as transgressional fiction. He is best known as the author of the award-winning novel Fight Club, which also was made into a feature film. He maintains homes in the states of Oregon and Washington.")

p essay_writer("Important people","Arthur Conan Doyle", 1859,"Sir Arthur Ignatius Conan Doyle DL (22 May 1859 – 7 July 1930) was a Scottish physician and writer who is most noted for his fictional stories about the detective Sherlock Holmes, which are generally considered milestones in the field of crime fiction. He is also known for writing the fictional adventures of a second character he invented, Professor Challenger, and for popularising the mystery of the Mary Celeste.[1] He was a prolific writer whose other works include fantasy and science fiction stories, plays, romances, poetry, non-fiction, and historical novels.")








# 5. Reflection 
# The instructions confused me a little bit because it asked for different methods to be used on a simple code. I am not sure if I did the code 
# correctly, but I did get the responsed that I did want and was happy with it. I wrote a code that took a title, topic and thesis and created an essay.
# not the best essay but it was still worth a D in my opinion. I feel there is a lot more that I can do to neaten this code up. I also feel that
# There should be a better way to write it.






