require_relative './nameable'
class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @name = name
    @parent_permission = parent_permission
    @age = age
    @id = Random.rand(1...5000)
  end

  # getters
  attr_accessor :age

  attr_accessor :name
  attr_reader :id

  # getters end

  # setters

  # setters end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end
end

# person = Person.new(22, 'maximilianus')
#   person.correct_name
#   capitalizedPerson = CapitalizeDecorator.new(person)
#   capitalizedPerson.correct_name
#   capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
#   capitalizedTrimmedPerson.correct_name
