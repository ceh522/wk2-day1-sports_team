# Part A
#
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").


require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_a')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test


  def test_get_student_name
    student = Student.new("Bob", "E36")
    assert_equal("Bob", student.get_student_name())
  end

  def test_get_cohort
    student = Student.new("Bob", "E36")
    assert_equal("E36", student.get_cohort())
  end

  def test_set_student_name
    student = Student.new("Bob", "E36")
    student.set_student_name("Fred")
    assert_equal("Fred", student.get_student_name)
  end

  def test_set_cohort
    student = Student.new("Bob", "E36")
    student.set_cohort("G1")
    assert_equal("G1", student.get_cohort)
  end

  def test_can_talk
    student = Student.new("Bob", "E36")
    student.can_talk
    assert_equal("I can talk!", student.can_talk)
  end

  def test_returns_favourite_programming_language
    student = Student.new("Bob", "E36")
    assert_equal("My favourite programming language is Ruby", student.returns_favourite_programming_language("Ruby"))
  end



end
