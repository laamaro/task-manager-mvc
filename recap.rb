class Person
  attr_reader :name
  # Person.new
  def initialize(name, gender)
    @name = name
    @gender = gender
    @age = 0
    @dead = false
  end

  def aging
    @age += 1
  end

  def is_dead
    @dead = true
  end

  def self.definition
    "Uma pessoa é um ser humano!"
  end
end

maria = Person.new('Maria', 'female')
joao = Person.new('João', 'male')

p maria.name
p joao

89.times do
  maria.aging
end

maria.is_dead

p maria

p Person.definition
