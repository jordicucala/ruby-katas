class Analyzer
  def characters_w_space(file='../oliver.txt')
    #Hello
    count = 0
    File.foreach(file) do |line|
      count += line.length unless line.length == 1
    end
    #Test
  
  end
end
