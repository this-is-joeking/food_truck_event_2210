class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map { |food_truck| food_truck.name }
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |food_truck|
      food_truck.check_stock(item) > 0
    end
  end

  def overstocked_items
    # items = {}
    # @food_trucks.each do |food_truck|
    # end
    #check if two food trucks have the same item
    # if they do check the quantity of those items
    # if total quantity is over 50 add to array
  end

  def full_menu
    @food_trucks.flat_map do |food_truck|
      food_truck.inventory.keys.map do |item|
        item.name
      end
    end.uniq.sort
  end
end
