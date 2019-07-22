# code here!
class School
 
  def initialize(school)
    @school=school
    @roster = {}
  end
  def roster
    @roster
  end

def add_student(studentName,grade)
  if @roster=={} 
      @roster[grade]=[]
  end
  if @roster.key?(grade)
    @roster.each do|gradeKey,studentArray|
      if gradeKey == grade
        @roster[grade].push(studentName)
      end
    end
  else
     @roster[grade]=[]
    @roster[grade].push(studentName)
  end
end

def grade(grade)
  @roster[grade]
end

def sort()
  @roster.each do|grade,studentArray|
  @roster[grade]=@roster[grade].sort
  end
end
end