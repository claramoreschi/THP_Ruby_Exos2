def ask_floors
	print "Combien d'étages veux-tu ?"
	print "> "
	floors = gets.chomp.to_i
	while ((floors < 1) && (floors > 25))
		puts "Saisis un nombre entre 1 et 25 !"
		print "> "
		floors = gets.chomp.to_i
	end
	return floors
end

def even_number(floors)
	while floors.even?
		puts "Saisis un nombre impair !"
		floors = ask_floors
	end
	return floors
end

def half_pyramid(floors)
	puts "Voici la pyramide :"
	floors.times do |i|
		puts "#"*(i+1)
        end
end

def full_pyramid (floors)
	puts "Voici la pyramide :"
	floors.times do |i|     
        puts " "*(floors -(i + 1)) + ("#"*(i+1)) + ("#"*(i))
    end
end

def wtf_pyramid (floors)
	floors = (even_number(floors)) / 2 + 1
	full_pyramid(floors)
	(floors-1).downto(1) { |i| puts " "*(floors - i) + "#"*(i*2-1)}
end

def menu
	puts "Quelle pyramide veux-tu réaliser ?"
    puts ""
	puts "1 : La demi-pyramide"
	puts "2 : La pyramide officielle"
	puts "3 : La WTFFFFF pyramide"
	puts "0 : Si t'en as marre, tu peux quitter !"
	return gets.chomp.to_i
end

def perform
    puts ""
	puts "Salut, bienvenue dans ma pyramide magique ! Choisis une option :)"
	while true
		case menu
		when 1
			half_pyramid(ask_floors)
		when 2
		  	full_pyramid(ask_floors)
		when 3
		  	wtf_pyramid(ask_floors)
		when 0
			break
		else
		  	puts "Valeur non valide, ça marche pô :( "
		end
		gets
	end
end

perform