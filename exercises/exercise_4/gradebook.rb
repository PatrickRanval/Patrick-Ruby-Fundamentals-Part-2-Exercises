require_relative 'student'

class Gradebook
  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def find_student(student_name)
    @students.find { |s| s.name == student_name }
  end

  def remove_student(student_name)
    @students.delete_if { |s| s.name == student_name }
  end

  def student_average(student_name)
    subject = find_student(student_name)
    subject.average_grade
  end

  def student_letter_grade(student_name)
    subject = find_student(student_name)
    subject.letter_grade
  end
end
