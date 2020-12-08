require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |item|
    puts "#{item[:name]} (#{item[:cuisine]}) | Heat Level: #{"🌶" * item[:heat_level]}"
    end 
end

def get_names(spicy_foods)
    spicy_foods.map do |item|
      item[:name]
    end
end

def spiciest_foods(spicy_foods)  
  spicy_foods.select do |hot_food| 
    if hot_food[:heat_level] > 5
      hot_food
    end
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_specific = {}
  spicy_foods.select do |menu|
    if cuisine == menu[:cuisine]
        menu
    end
  end
end

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  menu = spiciest_foods(spicy_foods)
  print_spicy_foods(menu)
end

def average_heat_level(spicy_foods)
  x = spicy_foods.collect {|num| num[:heat_level]}
  x.sum / x.length
end

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
"pls"