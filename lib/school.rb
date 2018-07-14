class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |s, g| s[k] = [] }
  end

  def add_student(student, grade)
    @roster[grade] << student
  end
end
