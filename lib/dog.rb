require "pry"

class Dog
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
        # binding.pry
    end

    def self.clear_all
        @@all.clear
    end


    def self.print_all
        @@all.each {|x| puts x.name}
        
    end

    def save
        @@all << self
    end

end