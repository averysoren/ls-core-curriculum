# calculator.rb

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

lang = 'en'

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(op, lang)
  if lang == 'en'
    word = case op
           when '1'
             MESSAGES[lang]['adding']
           when '2'
             MESSAGES[lang]['subtracting']
           when '3'
             MESSAGES[lang]['multiplying']
           when '4'
             MESSAGES[lang]['dividing']
           end
  end

  x = "A random line of code"
  word
end

prompt(MESSAGES[lang]['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?
    prompt(MESSAGES[lang]['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  num1 = ''
  loop do
    prompt(MESSAGES[lang]['first_num'])
    num1 = Kernel.gets().chomp()

    if number?(num1)
      break
    else
      prompt(MESSAGES[lang]['valid_number'])
    end
  end

  num2 = ''
  loop do
    prompt(MESSAGES[lang]['second_num'])
    num2 = Kernel.gets().chomp()

    if number?(num2)
      break
    else
      prompt(MESSAGES[lang]['valid_number'])
    end
  end

  prompt(MESSAGES[lang]['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES[lang]['must_choose'])
    end
  end

  prompt("#{operation_to_message(operator, lang)}")

  result = case operator
           when "1"
             num1.to_f + num2.to_f
           when "2"
             num1.to_f - num2.to_f
           when "3"
             num1.to_f * num2.to_f
           when "4"
             num1.to_f / num2.to_f
           end

  prompt(MESSAGES[lang]['result'] + "#{result}.")
  prompt(MESSAGES[lang]['another_calc'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES[lang]['goodbye'])
