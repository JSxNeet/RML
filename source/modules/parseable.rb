module Parseable
  
  def self.string(assigment,line,parse_tree)
    parse_tree[line.split(assigment)[0].strip] = line.split(assigment)[1].strip
  end

  def self.number(assigment,line,parse_tree)
    parse_tree[line.split(assigment)[0].strip] = line.split(assigment)[1].to_i
  end

  def self.boolean(assigment,line,parse_tree)
    parse_tree[line.split(assigment)[0].strip] = line.split(assigment)[1].strip == "true"
  end

  def self.array(assigment,array_operator,line,parse_tree)
    
    array_value = line.split(assigment).pop.strip.split(" ")
    array_value.delete(",")
    array_value.collect! { |element| element.delete(",").delete("|").strip }
  
    self.create_array(parse_tree,line,array_value,assigment)
  end

  def self.create_array(parse_tree,line,array,assigment)
    array.delete("")
    array.collect! {

    |element| if element == "true" || element == "false"
      element == "true"
    elsif element.to_i != 0
      element.to_i
    elsif element.to_i == 0
      element.strip
    end
    }
    
    parse_tree[line.strip.split(assigment)[0].strip] = array
  end
end
