module Verification
  def self.syntax ( filename, assignment_operator )
    line_count = 0
    err_count = 0

    File.readlines(filename).each {

    |line| line = line.split(" ")

    line_count += 1

    next if line.empty?
    err_count += 1 unless line.include?(assignment_operator)

    puts "----------\nNo found assigment operator in #{filename} ---> stroke #{line_count}" unless line.include?(assignment_operator)
    }
    
    return err_count
  end
end