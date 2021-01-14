require 'pry'

class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        #@@all_dogs.push(self)
        self.save
    end

    def save
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def self.print_all
        @@all.each do |dog|
            puts dog.name
        end
    end

    def self.clear_all
        @@all = []
    end
end

# binding.pry