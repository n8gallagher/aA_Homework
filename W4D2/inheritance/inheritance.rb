class Animal
    def name
        p "Animal"
        true
    end

end

module ChangeName
    def name
        p "Module"
    end

end

class Cat < Animal
    include ChangeName #takes priority over parent class
    def name
        super
        p "Cat"
        super
    end
end

c = Cat.new
c.name