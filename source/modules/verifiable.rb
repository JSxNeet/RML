module Verifiable
  
  def self.syntax_assigment(filename,assigment,line,err,line_count)
    err[:assigment] += 1 unless line.split.include?(assigment)
    puts "-------\nUnderfined #{assigment} at line #{line_count} in #{filename}" unless line.split.include?(assigment)
  end

  def self.syntax_array(filename,array_operator,line,err,line_count)
    array_operator_count = 0
    line.split("").each{ |operator| array_operator_count += 1 if operator == array_operator }
    
    err[:array] += 1 if array_operator_count % 2 != 0
    puts "-------\nUnderfined #{array_operator} at line #{line_count} in #{filename}" if array_operator_count % 2 != 0
  end

end