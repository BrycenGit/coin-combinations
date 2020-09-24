require('pry')

class Change
  attr_reader(:penny, :nickle, :dime, :quarter)
  attr_accessor(:input)

  def initialize (input)
    @penny = 0
    @nickle = 0
    @dime = 0
    @quarter = 0
    @input = input
  end  

  def sorter
    if (@input == 0)
      return '0'
    elsif (@input >= 25)
      quarter_counter()
      sorter()
    elsif (@input >= 10)
      dime_counter()
      sorter()
    elsif (@input >= 5)
      nickle_counter()
      sorter()
    elsif (@input > 0)
      penny_counter()  
    else 
      puts "Please enter a number value greater than zero."
    end
    return "Your change is: #{@quarter} quarter(s), #{@dime} dime(s), #{@nickle} nickle(s), and #{@penny} pennies."
  end

  def penny_counter
    penny_array = (1..@input).find_all { |i| i % 1 == 0 }
    @penny += penny_array.length
    return @penny
  end

  def nickle_counter
    nickle_array = (1..@input).find_all { |i| i % 5 == 0 }
    @nickle += nickle_array.length
    @input = @input % 5
    return @nickle
  end

  def dime_counter
    dime_array = (1..@input).find_all { |i| i % 10 == 0 }
    @dime += dime_array.length
    @input = @input % 10
    return @dime
  end

  def quarter_counter
    quarter_array = (1..@input).find_all { |i| i % 25 == 0 }
    @quarter += quarter_array.length
    @input = @input % 25
    return @quarter
  end
end  
