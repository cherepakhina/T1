
def to_digit(symbol)
	case symbol
		when 'p'
			return 1
		when 's'
			return 0
		when 'r'
			return 2
		else
			puts "!!invalid data!!"
			exit(1)
	end
end

def to_text(digit)
	case digit
		when 1
			return "paper"
		when 0
			return "scissors"
		when 2
			return "rock"
		else
			puts "!!invalid data!!"
			exit(1)
	end
end

puts "+--- rock-paper-scissors game ---+"
puts "rules: p - paper, s - scissors, r - rock"

user_janken = to_digit(gets.chomp.downcase) 
computer_janken = rand(3)

matrix_result = [[0, 1, -1], [-1, 0, 1], [1, -1, 0]]
result = matrix_result[computer_janken][user_janken]

user_janken = to_text(user_janken)
computer_janken = to_text(computer_janken)

case result
when 1
	puts "your #{user_janken} vs computer's #{computer_janken} ... 
		computer wins!"
when -1
	puts "your #{user_janken} vs computer's #{computer_janken} ... 
		you win!"
else
	puts "your #{user_janken} vs computers #{computer_janken} ... 
	it's a draw!"
end