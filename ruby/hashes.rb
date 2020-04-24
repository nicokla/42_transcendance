dict = {}  # create a new dictionary
dict['H'] = 'Hydrogen' #associate the key 'H' to the value 'Hydrogen'
dict['He'] = 'Helium'
dict['Li'] = 'Lithium'
p dict['H']       # prints "Hydrogen"
p dict.length     # prints 3
p dict.values     # prints ["Lithium", "Helium", "Hydrogen"]
p dict.keys       # prints ["Li", "He", "H"]
p dict            # prints {"Li"=>"Lithium", "He"=>"Helium", "H"=>"Hydrogen"}



toppings = Hash["pancakes","syrup","Pizza","Pepper","Cereal","Sugar"]
toppings.each{|key, value| puts "#{key} points to #{value}"}



salaries = Hash["bob",10.9,"larry",7.5,"jimmy",6.0,"jerry",6.5]
salaries.inspect
mySalaryArray = salaries.select{|name,salary| salary > 7.0}
puts mySalaryArray.inspect #prints  [["larry", 7.5], ["bob", 10.9]]
