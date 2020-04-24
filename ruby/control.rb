income = 30000.00
if income < 10000
  rate = 0.02
elsif income < 30000
  rate = 0.28
else
  rate = 0.5
end
puts rate



grade = 10
school = case grade
when 0..5
   "elementary"
when 6..8
   "middle school"
when 9..12
   "high school"
else
   "college"
end
puts "grade #{grade} is in #{school}"




top = 6
for i in 1..top
 puts "hi #{i}"
end



i = 0
while i  < 5
  i = i+1
  puts i
end



animals = %w(lions tigers bears)
animals.each{|kind| print kind}



n = 10
n.times { |i| print i}
