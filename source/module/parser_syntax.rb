class Parser
  def self.syntax( filename, assignment, array_operators, err_count )
    return "-----\nError_count not equally zero" if err_count[:assigment] > 0 || err_count[:array] > 0

    parser_tree = Hash.new
    
    File.readlines(filename).each {
      
    |line| next if line == "\n"
    line = line.split(assignment)
    arr = line[1].strip.split(array_operators).pop.strip.split(",")
    
    value_arr = arr.collect {
    |element| if element.to_i == 0
      element.strip
    else
      element.to_i
    end
    }
    
    value = value_arr[0] unless value_arr.size != 1
    
    parser_tree[line[0].strip] = value_arr unless value_arr.size == 1
    parser_tree[line[0].strip] = value.strip if value.to_i == 0 && !(value.nil?)
    parser_tree[line[0].strip] = value.to_i unless value.to_i == 0

    }
  
    return parser_tree
  end
end