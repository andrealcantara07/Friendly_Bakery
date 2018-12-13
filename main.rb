class Cookies
    attr_accessor :type_of, :price, :img
    def initialize(type_of, price, img)
        @type_of = type_of
        @price = price
        @img = img
    end

end

@peanut = Cookies.new("Peanut Butter", "$12", "Pictures/PeanutButter.jpg")
@fudge = Cookies.new("Fudge", "$10", "Pictures/Fudge.jpg")
@oatmeal = Cookies.new("Oatmeal", "$25", "Pictures/Oatmeal.jpg")


class Cake 
    attr_accessor :type_of, :price, :img
    def initialize(type_of, price, img)
        @type_of = type_of
        @price = price
        @img = img
    end
end

@choco = Cake.new("Chocolate", "$40", "Pictures/ChocolateCake.jpg")
@cheese = Cake.new("Cheesecake", "$40", "Pictures/CheeseCake.jpg")
@short = Cake.new("Shortcake", "$40", "Pictures/ShortCake.jpg")


class Muffin
    attr_accessor :type_of, :price, :img
    def initialize(type_of, price, img)
        @type_of = type_of
        @price = price
        @img = img
    end
end

@blue = Muffin.new("Blueberry", "$5", "Pictures/BlueMuffin.jpg")
@banana = Muffin.new("Banana", "$4", "Pictures/BananaMuffin.jpg")
@cream = Muffin.new("Cream Cheese", "$10", "Pictures/CreamMuffin.jpg")

 