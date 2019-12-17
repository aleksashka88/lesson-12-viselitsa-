class ResultPrinter

def print_status(game)
	cls
	puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters)

	puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"

	print_viselitsa(game.errors)



	if game.errors >= 7
		puts "Вы проиграли :("
	else
		if game.letters.uniq.size == game.good_letters.size  
			puts "Поздравляем! Вы выиграли!\n\n"
		else
			puts "У вас осталось попыток: " + (7-game.errors).to_s
		end
	end
end

def get_word_for_print(letters, good_letters)
	result = ""

	for letter in letters do
		if good_letters.include? letter
			result += letter + " "
		else
			result += "__ "
		end
	end

	return result
end

def cls
	system "clear" or system "cls"
end

def print_viselitsa(errors)
	case errors
		when 0
		puts "
	_________
	|/
	|
	|
	|
	|
	|
	|
	|
  __|_________
  |          |
  "
		# нарисовать пустую виселицу
		when 1
			puts "
	_________
	|/
	|       ( )
	| 
	|
	|
	|
	|
	|
  __|_________
  |          |
  "
		# +1 ошибка
		when 2
			puts "
	_________
	|/
	|       ( )
	|        |
	|
	|
	|
	|
	|
  __|_________
  |          |
  "
		# +2 ошибки
		when 3
			puts "
	_________
	|/
	|       ( )
	|        |_
	|          \\
	|
	|
	|
	|
  __|_________
  |          |
  "
		# +3 ошибки
		when 4
			puts "
	_________
	|/
	|       ( )
	|       _|_
	|      /   \\
	|
	|
	|
	|
  __|_________
  |          |
  "
		# +4 ошибки
		when 5
			puts "
	_________
	|/
	|       ( )
	|       _|_
	|      / | \\
	|        |
	|
	|
	|
  __|_________
  |          |
  "
		# +5 ошибок
		when 6
			puts "
	_________
	|/
	|       ( )
	|       _|_
	|      / | \\
	|        |
	|       / \\
	|      /   \\
	|
  __|_________
  |          |
  "
		# +6 ошибок
		when 7
			puts "
	_________
	|/       |
	|       ( )
	|       _|_
	|      / | \\
	|        |
	|       / \\
	|      /   \\
	|
  __|_________
  |          |
  "
		# +7 ошибок
		end
	end
end