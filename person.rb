class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @name = name
    @parent_permission = parent_permission
    @age = age
    @id = Random.rand(1...5000)
  end

  # getters
  def age
    @age
  end

  def name
    @name
  end

  def id
    @id
  end
  # getters end

  # setters
  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end
  # setters end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end
end
