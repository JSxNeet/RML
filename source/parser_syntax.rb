require_relative "modules/parseable.rb"

class Parser
  def self.syntax(filename, assigment, array_operator,err_count)
    return "-----\nError_count not equally zero" if err_count[:assigment] > 0 || err_count[:array] > 0

    parse_tree = Hash.new

    File.readlines(filename).each{

    |line| next if line[0] == "\n"

    Parseable.string(assigment,line,parse_tree) if line.split(assigment)[1].to_i == 0

    Parseable.number(assigment,line,parse_tree) unless line.split(assigment)[1].to_i == 0

    Parseable.boolean(assigment,line,parse_tree) if line.split(assigment)[1].strip == "true" || line.split(assigment)[1].strip == "false"

    Parseable.array(assigment,array_operator,line,parse_tree) if line.split("").include?(array_operator)

  }
    p parse_tree
  end
end