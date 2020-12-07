require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.map do |item|
    puts "#{item[:name]} (#{item[:cuisine]}) | Heat Level: #{item[:heat_level]}"
  end
end

def get_names(spicy_foods)
  array = []
    spicy_foods.map do |item|
      array << item[:name]
    end
    array
end

def spiciest_foods(spicy_foods)  
  spicy_array = []
  spicy_foods.collect do |hot_food| 
    if hot_food[:heat_level] > 5
      spicy_array << hot_food
    end
  end
spicy_array
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_specific = {}
  spicy_foods.each do |menu|
    if cuisine == menu[:cuisine]
      spicy_specific = menu
    end
  end
spicy_specific
end

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  menu = spiciest_foods(spicy_foods)
  print_spicy_foods(menu)
end

def average_heat_level(spicy_foods)
  count = 0
  average_spice = 0
  spicy_foods.map do |item|
    average_spice += item[:heat_level]
    count += 1
  end
  average_spice /= count
end

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console

"pls"