def school_bus(child1, child2, child3)
  school_bus = []
  school_bus += [child1, child2, child3]
end

def lunch_menu(arr, addten)
  arr << addten
end

my_array = []

p my_array

my_array = my_array + ["item1", "item2", "item3", "item4", "item5"]

p my_array

my_array.delete_at(2)

p my_array

my_array.insert(2, "new_item3")

p my_array

my_array.reverse!.pop

my_array.reverse!

p my_array

puts "This code includes item4: #{my_array.include?("item4")}"

other_array = ["itema", "itemb", "itemc"]

combo_array = my_array + other_array

p combo_array

p school_bus("Doug", "Julie", "Sam")

p lunch_menu(["meatloaf", "grilled cheese", "milk"], "capri_sun")

p lunch_menu([], "apple")