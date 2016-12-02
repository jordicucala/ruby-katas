class Analyzer
  def chars_and_space(file='../oliver.txt')
    count = 0
    lines = file_lines(file)
    lines.each do |line|
      count += line.length unless line[0] == "\n"
    end
    count
  end

  def chars_no_space(file='../oliver.txt')
    count = 0
    lines = file_lines(file)
    lines.each do |line|
      line.each_char do |char|
        count += 1 unless(char == ' ' || char == "\n")
      end
    end
    count
  end

  def word_count(file='../oliver.txt')
    count = 0
    lines = file_lines(file)
    lines.each do |line|
      words = line.split(' ')
      count += words.length if words.any?
    end
    count
  end

  def file_lines(file='../oliver.txt')
    lines = []
    File.foreach(file) do |line|
      lines << line
    end
    lines
  end
end
