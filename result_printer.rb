# encoding: UTF-8

class ResultPrinter
  def initialize(result_path)
    unless File.exist?(result_path)
      abort "Файл #{result_path} не найден."
    end
    file = File.new(result_path, "r:UTF-8")
    @result = file.readlines
    file.close
  end

  def print_result(test)
    puts "Результаты теста #{test.points} :"

    case test.points
    when (32..30) then puts @result[0]
    when (25..29) then puts @result[1]
    when (19..24) then puts @result[2]
    when (14..18) then puts @result[3]
    when (9..13) then puts @result[4]
    when (4..8) then puts @result[5]
    else
      puts @result[6]
    end
  end
end
