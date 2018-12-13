require 'sinatra'
require 'sinatra/reloader'
require './main'


register Sinatra::Reloader


get '/' do
    erb :home, :layout => :friendly_layout


end


get '/products' do
    # ------------------COOKIES-----------------------
    @peanut = Cookies.new("Peanut Butter", "$12", "/Pictures/PeanutButter.jpg")
    @fudge = Cookies.new("Fudge", "$10", "Pictures/Fudge.jpg")
    @oatmeal = Cookies.new("Oatmeal", "$25", "Pictures/Oatmeal.jpg") 
    #-------------------CAKES------------------------
    @choco = Cake.new("Chocolate", "$40", "Pictures/ChocolateCake.jpg")
    @cheese = Cake.new("Cheesecake", "$40", "Pictures/CheeseCake.jpg")
    @short = Cake.new("Shortcake", "$40", "Pictures/ShortCake.jpg")
    #-------------------MUFFINS--------------------------
    @blue = Muffin.new("Blueberry", "$5", "Pictures/BlueMuffin.jpg")
    @banana = Muffin.new("Banana", "$4", "Pictures/BananaMuffin.jpg")
    @cream = Muffin.new("Cream Cheese", "$10", "Pictures/CreamMuffin.jpg")
    #--------------------Iterate THROUGH EACH CLASS----------------
    @every = [@peanut, @fudge, @oatmeal, @choco, @cheese, @short, @blue, @banana, @cream]
    @other = @every.sample(9)
    erb :index, :layout => :friendly_layout
end

get '/cookies' do
    # ------------------COOKIES-----------------------
    @peanut = Cookies.new("Peanut Butter", "$12", "/Pictures/PeanutButter.jpg")
    @fudge = Cookies.new("Fudge", "$10", "Pictures/Fudge.jpg")
    @oatmeal = Cookies.new("Oatmeal", "$25", "Pictures/Oatmeal.jpg")
    @every = [@peanut, @fudge, @oatmeal]
    erb :cookies, :layout => :friendly_layout

end

get '/muffins' do
     #-------------------MUFFINS--------------------------
    @blue = Muffin.new("Blueberry", "$5", "Pictures/BlueMuffin.jpg")
    @banana = Muffin.new("Banana", "$4", "Pictures/BananaMuffin.jpg")
    @cream = Muffin.new("Cream Cheese", "$10", "Pictures/CreamMuffin.jpg")
    @every = [@blue, @banana, @cream]
    erb :muffins, :layout => :friendly_layout

end

get '/cakes' do
    #-------------------CAKES------------------------
    @choco = Cake.new("Chocolate", "$40", "Pictures/ChocolateCake.jpg")
    @cheese = Cake.new("Cheesecake", "$40", "Pictures/CheeseCake.jpg")
    @short = Cake.new("Shortcake", "$40", "Pictures/ShortCake.jpg")
    @every = [@choco, @cheese, @short]
    erb :cakes, :layout => :friendly_layout

end