require "pry"

class MainDish
    attr_accessor :item, :price

    def initialize(item, price)
        @item = item
        @price = price
    end
end

class SideDish < MainDish
    attr_accessor :item, :price

    def initialize(item, price)
        @item = item
        @price = price
    end
end


class LunchLady 

    def initialize

        @main_dish = [
            {dish_name: "Meatloaf", price: 5, fat: "35g", carbs: "40g", calories: 100, protein: "60g"},
            {dish_name: "Hamburger", price: 5, fat: "60g", carbs: "40g", calories: 150, protein: "30g"},
            {dish_name: "Strip Steak", price: 7, fat: "20g", carbs: "0g", calories: 120, protein: "90g"},
            {dish_name: "Burrito", price: 4, fat: "55g", carbs: "45g", calories: 100, protein: "40g"}
        ]

        @side_dish = [
            {dish_name: "Green Salad", price: 2, fat: "10g", carbs: "20g", calories: 100, protein: "0g"},
            {dish_name: "Mashed Potatoes", price: 2, fat: "15g", carbs: "30g", calories: 110, protein: "0g"},
            {dish_name: "Soup of the Day", price: 1, fat: "15g", carbs: "0g", calories: 40, protein: "0g"},
            {dish_name: "Street Corn", price: 3, fat: "35g", carbs: "40g", calories: 90, protein: "60g"},
            {dish_name: "Fries", price: 1, fat: "40g", carbs: "40g", calories: 100, protein: "60g"},
            {dish_name: "Crab Cakes", price: 4, fat: "35g", carbs: "40g", calories: 80, protein: "10g"}
        ]

        meatloaf = MainDish.new("Meatloaf", 5)
        hamburger = MainDish.new("Hamburger", 5)
        strip_steak = MainDish.new("Strip Steak", 7)
        burrito = MainDish.new("Burrito", 4)
    
    
        green_salad = SideDish.new("Green Salad", 2)
        mashed_potatoes = SideDish.new("Mashed Potatoes", 2)
        soup = SideDish.new("Soup of the Day", 1)
        corn = SideDish.new("Street Corn", 3)
        fries = SideDish.new("Fries", 1)
        crab_cake = SideDish.new("Crab Cakes", 4)
    
    
    @cart = []
        puts "--- Welcome to Ruby Cafe! ---"
        puts "What is your name?"
        name = gets.strip
        puts "Hello #{name}, how much money do you have?"
        print "$"
        @wallet = gets.to_i
        
        main_menu
    end

    def main_menu
      puts "Select a Main Dish!"
        @main_dish.each_with_index do |item, index|
            puts "#{index + 1}. #{item[:dish_name]} ($#{item[:price]}.00)"
        end
            puts "5. See Nutritional Facts!"
        
         choice = gets.to_i
         case choice
         when 1
            @cart.push(@main_dish[0])
         when 2 
            @cart.push(@main_dish[1])
         when 3
            @cart.push(@main_dish[2])
         when 4 
            @cart.push(@main_dish[3])
         when 5
            puts "#{@main_dish[0][:dish_name]} -  Fat: #{@main_dish[0][:fat]}. Carbs: #{@main_dish[0][:carbs]}. Calories: #{@main_dish[0][:calories]}."
            puts "#{@main_dish[1][:dish_name]} -  Fat: #{@main_dish[1][:fat]}. Carbs: #{@main_dish[1][:carbs]}. Calories: #{@main_dish[1][:calories]}."
            puts "#{@main_dish[2][:dish_name]} -  Fat: #{@main_dish[2][:fat]}. Carbs: #{@main_dish[2][:carbs]}. Calories: #{@main_dish[2][:calories]}."
            puts "#{@main_dish[3][:dish_name]} -  Fat: #{@main_dish[3][:fat]}. Carbs: #{@main_dish[3][:carbs]}. Calories: #{@main_dish[3][:calories]}."
            puts "1. Done"
   
            choice = gets.to_i
            case choice
            when 1
             main_menu
            end
         
         end

       puts "#{@cart[0][:dish_name]} is a good choice! Your Wallet: $#{@wallet - @cart[0][:price]}.00."
       puts "Now select a Side Dish:"  
       @side_dish.each_with_index do |item, index|
        puts "#{index + 1}. #{item[:dish_name]} ($#{item[:price]}.00)"
        end
        choice = gets.to_i
         case choice
         when 1
            @cart.push(@side_dish[0])
         when 2 
            @cart.push(@side_dish[1])
         when 3
            @cart.push(@side_dish[2])
         when 4 
            @cart.push(@side_dish[3])
         when 5
            @cart.push(@side_dish[4])
         when 6
            @cart.push(@side_dish[5])
         end

            puts "#{@cart[0][:dish_name]} with #{@cart[1][:dish_name]}! Your Wallet: $#{@wallet - @cart[0][:price] - @cart[1][:price]}.00."
            puts "Now select another Side Dish!"
            @side_dish.each_with_index do |item, index|
                puts "#{index + 1}. #{item[:dish_name]} ($#{item[:price]}.00)"
                end
       
                choice = gets.to_i
         case choice
         when 1
            @cart.push(@side_dish[0])
         when 2 
            @cart.push(@side_dish[1])
         when 3
            @cart.push(@side_dish[2])
         when 4 
            @cart.push(@side_dish[3])
        when 5
            @cart.push(@side_dish[4])
         when 6
            @cart.push(@side_dish[5])
         end

         puts "#{@cart[0][:dish_name]} with #{@cart[1][:dish_name]} & #{@cart[2][:dish_name]}"
         puts "Your total price for the meal is $#{@cart[0][:price] + @cart[1][:price] + @cart[2][:price]}.00."
         puts "Would you like to:"
         puts "1. Checkout"
         puts "2. Start Over"

         choice_1 = gets.to_i
         case choice_1
         when 1
            puts "Your Remaining Balance: $#{@wallet - @cart[0][:price] - @cart[1][:price] - @cart[2][:price]}.00."
            puts "Thank you, come again!"
         when 2
            main_menu
         end
    
    end
   
        
    
end

class User
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end


user = User.new(@name)
lunch_lady = LunchLady.new()




