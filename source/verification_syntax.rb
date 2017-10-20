require_relative "modules/verifiable"

class Verificator
  def self.syntax(filename, assigment, array_operator)
    line_count = 0
    err_count = {:assigment => 0, :array => 0}

    File.readlines(filename).each{
      
    |line|line_count += 1

    next if line[0] == "\n"
    

    Verifiable.syntax_assigment(filename,assigment,line,err_count,line_count)

    Verifiable.syntax_array(filename,array_operator,line,err_count,line_count) if line.split(array_operator).pop.split("=>").size == 1
  }
  
  return err_count
  end
end