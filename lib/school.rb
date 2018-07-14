require 'pry'
class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |hn, g| hn[g] = [] }
  end

  def add_student(student, grade)
    @roster[grade] << student
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.sort.each{|k, v| v.sort}.to_h
binding.pry
    #@roster.sort_by{|k, v| v}.to_h
  end
end
