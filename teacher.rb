# 🔷 Parent Class
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def details
    puts "Name: #{@name}, Age: #{@age}"
  end
end

# 🎓 Child Class: Student
class Student < Person
  attr_accessor :student_id

  def initialize(name, age, student_id)
    super(name, age)
    @student_id = student_id
  end

  # 🔁 Override method
  def details
    puts "Student: #{@name}, Age: #{@age}, ID: #{@student_id}"
  end
end

# 👩‍🏫 Child Class: Teacher
class Teacher < Person
  attr_accessor :subject

  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
  end

  # 🔁 Override method
  def details
    puts "Teacher: #{@name}, Age: #{@age}, Subject: #{@subject}"
  end
end

# ▶️ Create objects
s1 = Student.new("Alice", 20, "S101")
t1 = Teacher.new("Mr. John", 40, "Math")

# 📊 Display details
s1.details
t1.details