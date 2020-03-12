class Dog

    attr_reader :name 
    @@all = [] 

def initialize(name)
    @name = name
    #@@all << self 
    self.save 
end

def self.all
    @@all
end

def self.clear_all 
    self.all.clear 
end 

def self.print_all 

    all_dogs = self.all 
    all_dogs.each do | dogs| puts dogs.name 
  end 

end 


def save 
    @@all << self 
end 




end 
