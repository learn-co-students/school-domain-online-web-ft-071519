# code here!
class School
  attr_reader :roster, :grade


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, names|
      sorted_roster[grade]= names.sort
    end
    sorted_roster
  end

end
