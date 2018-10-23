digraph onetomany {
  rankdir=LR;
  node[shape="box"]
  Cohort
  Student
  Cohort -> Student [arrowhead="crow"]
}
class Cohort
  def initialize(name, students)
    @name = name
    @students = students
  end

  attr_reader :name, :students
end

class Student
  def initialize(name)
    @name = name
  end
end

students = [
  Student.new("Fred"),
  Student.new("George")
]
cohort = Cohort.new("Blue July 2017", students)