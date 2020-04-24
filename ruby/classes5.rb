class Person
  def initialize(fname, lname)
   @fname = fname
   @lname = lname
  end
  def to_s
     "Person: #@fname #@lname"
  end
end
person = Person.new("Augustus","Bondi")
print person


class Employee < Person
  def initialize(fname, lname, position)
    super(fname,lname)
    @position = position
  end
  def to_s
     super + ", #@position"
  end
  attr_writer :position
end
employee = Employee.new("Augustus","Bondi","CFO")
puts employee
puts employee.fname
employee.position = "CEO"
puts employee
