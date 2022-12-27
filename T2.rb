
def menu()
    puts "(1) addition"
    puts "(2) subtraction"
    puts "(3) division"
    puts "(4) multiplication"
    puts "(0) exit the application"
    print "Enter: "
    
    op_selectio = ""
    loop do
        op_selectio = gets.chomp

        if !(op_selectio =~ /[[:digit:]]/) || !(op_selectio =~ /[0-4]/)
            puts "!!invaild input!!" 
        else return op_selectio.to_i
        end
    end
end

while true do
    m = menu() 
    if m == 0 
        puts "-- bye!"
        break
    end

    puts "-- first number: "
    number1 = gets.to_i
    puts "-- second number: "
    number2 = gets.to_i

    case m
    when 1  
        puts "--: \n#{number1} + #{number2} = #{number1 + number2}"
    when 2
        puts "--: \n#{number1} - #{number2} = #{number1 - number2}"
    when 3
        if number2 == 0
            puts "!!division by zero is forbidden!!\n"
            next
        end

        puts "--: \n#{number1} / #{number2} = #{number1 / number2}"
    when 4
        puts "--: \n#{number1} * #{number2} = #{number1 * number2}"
    end
    system "pause"
    system "clear"
    system "cls"
end