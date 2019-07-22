require 'pry'

class School
  
  attr_accessor :roster
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
    
    # return updated roster
    roster
  end  
    
end

school = School.new("UCCS")
# binding.pry