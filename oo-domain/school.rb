class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade_number)
    roster[grade_number.to_i]
  end

  def sort
    sorted = {}
    roster.each do |key, value|
      sorted[key] = value.sort
    end
    sorted
  end
end