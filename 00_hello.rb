def ask_first_name
    puts "Dis, c'est quoi ton p'tit nom ?"
    return gets.chomp
end

def say_hello (first_name)
    puts "Hello, #{first_name} !"
end

puts say_hello (ask_first_name)

