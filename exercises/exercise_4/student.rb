class Student
  attr_accessor :name, :grades

  def initialize(name)
    @name = name
    @grades = []
  end

  def add_grade(grade)
    @grades << grade
  end

  def average_grade
    @grades.sum / @grades.length.to_f
  end

  def letter_grade
    score = average_grade
    case score
    when 90..100
      'A'
    when 80..89
      'B'
    when 70..79
      'C'
    when 60..69
      'D'
    else
      'F'
    end
  end
end
