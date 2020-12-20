require 'pry'

class Dog
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        doggies = self.all.map do |dog|
            dog.name
        end
        puts doggies
    end
    
    def save
        @@all << self
    end

end
