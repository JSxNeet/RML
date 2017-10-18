class Verificator
  def self.syntax (filename, assigment, array_operators)
    line_count = 0
    err_count = {:assigment => 0, :array => 0}

    File.readlines(filename).each {
    
    |line| line_key__value = line.split(assigment)
    next if line_key__value[0] == "\n"
    line_count += 1

    err_count[:assigment] += 1 if line_key__value.size == 1
    puts "------\nUnderfined \"#{assigment}\" at line #{line_count} in #{filename}" if line_key__value.size == 1
    next if line_key__value.size == 1
    
    err_count += 1 if line_key__value[1].nil?
    arr = line_key__value[1].strip.split(" ")
    arr_value = line_key__value[1].strip.split("|").pop.strip.split(",")
    
    array_count = 0
    
    unless arr_value.size == 1
      arr.each {|word| array_count += 1 if word == array_operators}
      err_count[:array] += 1 unless array_count == 2
      puts "------\nUnderfined \"#{array_operators}\" at line #{line_count} in #{filename}" unless array_count == 2
    end
    }
    
    return err_count
  end
end