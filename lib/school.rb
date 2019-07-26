class School
  attr_accessor :name, :roster 
  attr_reader :grade
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  def add_student(student,level)
    roster[level] ||= []
    roster[level] << student
  end 
  def grade(grade)
    @roster[grade]
  end 
  def sort
    @roster.each do |key,value|
      value.sort!
    end 
  end 
end