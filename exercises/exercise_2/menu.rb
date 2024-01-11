require_relative 'dish'

class Menu
  def initialize
    @menu = []
  end

  def add_dish(dish)
    @menu << dish
  end

  def display_menu
    menu = []
    @menu.each do |item|
      menu << item.name
    end
    menu
  end

  def remove_dish(name)
    @menu.delete_if { |dish| dish.name == name }
  end
end

menu = Menu.new
dish1 = Dish.new('Spaghetti', 12.00)
dish2 = Dish.new('Salad', 8.50)

menu.add_dish(dish1)
menu.add_dish(dish2)

menu.display_menu
