def initialize(age, name = 'Unknown', parent_permission: true)
  super()
  @name = name
  @parent_permission = parent_permission
  @age = age
  @id = Random.rand(1...5000)
end

def of_age?
  @age >= 18
end
private :of_age?

def can_use_services?
  of_age? || @parent_permission
end

end