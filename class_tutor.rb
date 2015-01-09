class Student
  attr_accessor :computer
  attr_accessor :first_name
  attr_accessor :last_name

  def full_name
    self.first_name + " " + self.last_name
  end
end

class Classroom
  attr_accessor :students
  attr_accessor :name

  def initialize
    self.students = []
  end

end

student_info = Student.new
student_info.first_name = "Mark"
student_info.last_name = "Lohr"

student_info2 = Student.new
student_info2.first_name = "Jesse"
student_info2.last_name = "Robinson"

student_info3 = Student.new
student_info3.first_name = "Front"
student_info3.last_name = "End 1"

# classroom = []
# classroom.push(student_info)
# classroom.push(student_info2)
# classroom.push(student_info3)
# puts classroom.inspect
# puts classroom.length


class_info = Classroom.new
class_info.name = "Ruby on Rails"
class_info.students.push(student_info)
class_info.students.push(student_info2)

# class_info2 = Classroom.new
# class_info2.name = "Front End"
# class_info2.students.push(student_info3)

p class_info.students[0]
p class_info.students[1]




























