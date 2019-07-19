class School
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    
  end
  
  def roster
    roster = {}
  end
  
  def add_student(name, grade)
    if roster.has_key?(grade)
      roster[:grade] << name
    else
      roster[:grade] = [name]
     
    end
    roster
  end
end

