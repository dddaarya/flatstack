# encoding: utf-8
class NumberSequence

  # Initialize the instance variables
  def initialize
    @count = 0
  end

  def set_input(num)
    @count = num
  end

  
  def build_next_line(line)
    newline = ''
    occurrence = 0
    last_char = line[0]
    line.each_char do |char| 
      if char != last_char 
        newline = "#{newline}#{occurrence}#{last_char}"  
        occurrence = 0
        last_char = char 
      end
      occurrence += 1
    end

 
    "#{newline}#{occurrence}#{last_char}"
  end

  def print_output
    out = Array.new(@count,String)
 
    out[0] = '1'

    (1..@count).each do |n| 
      out[n] = build_next_line(out[n-1])
    end

    puts out.join("\n")
  end
end

seq = NumberSequence.new


seq.set_input(7)


seq.print_output
