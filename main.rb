# encoding: UTF-8

require_relative "lib/test"
require_relative "lib/result_printer"

puts "Тест \"Оценка уровня общительности\"."
puts "Инструкция: Вашему вниманию предлагается несколько простых вопросов.\n"\
 "Отвечайте быстро, однозначно: 1 - да, 2 - нет, 3 - иногда, и нажмите Enter."

current_path = File.dirname(__FILE__)
question_path = current_path + "/data/questions.txt"
result_path = current_path + "/data/results.txt"

test = Test.new(question_path)
result_printer = ResultPrinter.new(result_path)


until test.finished?
  test.next_question
end

result_printer.print_result(test)
