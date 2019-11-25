# Part A
#
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

# def test_student_name
#   student = Student.new("Bob", E36)
#   assert_equal("Bob", student.student_name())
# end

class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

def get_student_name
  @student_name
end

def get_cohort
  @cohort
end

def set_student_name(student_name)
  @student_name = student_name
end

def set_cohort(cohort)
  @cohort = cohort
end

def can_talk
  return "I can talk!"
end

def returns_favourite_programming_language(favourite_programming_language)
  return "My favourite programming language is #{favourite_programming_language}"
end










end
