class Cat < ActiveRecord::Base
  # name, age, and breed are defined in the CreateCat class found in ./app/db/migrate
  belongs_to :owner
  has_many :friends

  def speak(var)
    puts "Meow, I am a cat, why do you want me to say #{var} as if I'm a parrot!?"
  end
end
