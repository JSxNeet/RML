module Parser
  def self.syntax( filename, assignment_operator, err_count )
    return "-----\nError count not equally zero" if err_count > 0

    syntax_tree = Hash.new

    File.readlines(filename).each {
    
    |line| line = line.split(assignment_operator)
    next if line.size == 1
    
    syntax_tree[line[0].strip] = line[1].to_i unless line[1].to_i == 0
    syntax_tree[line[0].strip] = line[1].strip if line[1].to_i == 0
    }

    return syntax_tree
  end
end