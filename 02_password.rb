def signup
	puts "Choisissez un mot de passe s'il vous plait : "
	print "> "
	return gets.chomp
end

def login (password)
	essais = 4
	puts "Mot de passe :"
	print "> "
	str = gets.chomp
	while password != str
		if essais > 0
			puts "MDP incorrect, reessayez : (reste #{essais} essais)"
			print "> "
			str = gets.chomp
			essais -= 1
		else
			puts "Accès refusé"
			return false
		end
	end
	return true
end

def welcome_screen
	puts "......000000....000000......."
	puts ".....00000000..00000000......"
	puts "....00000000000000000000....."
	puts ".....000000000000000000......"                   
	puts ".......000000000000000......."
    puts "......... 000000000.........."
    puts "............00000............"
    puts "..............0.............."
end

def perform
	if login(signup)
		welcome_screen
	end	
end

perform