# 1.
def pet_shop_name(shop)
  return shop[:name]
end

# 2.
def total_cash(value)
  return value[:admin][:total_cash]
end

# 3/4.
def add_or_remove_cash(unit, cash)
  unit[:admin][:total_cash] += cash
end

# 5.
def pets_sold(unit)
  return unit[:admin][:pets_sold]
end

# 6.
def increase_pets_sold(unit, number)
  unit[:admin][:pets_sold] += number
end

# 7.
def stock_count(unit)
  return unit[:pets].length()
end

# 8/9.
def pets_by_breed(unit, breed)
  num_of_breed =[]
  for pet in unit[:pets]
    if pet[:breed] == breed
      num_of_breed << breed
    end
  end
  return num_of_breed
end


# 10/11.
def find_pet_by_name(unit, name)
  pet_name = []
    for pet in unit[:pets]
      if pet[:name] == name
        pet_name << pet
      end
    end
    return pet_name[0]
    if name != pet[:name]
      return nil
    end
end


# 12.
def remove_pet_by_name (unit, name)
  for pet in unit[:pets]
    if pet[:name] == name
      unit[:pets].delete(pet)
    end
  end
end

# 13. Not sure if this is too simple and answer and
# should be doing more checks?
def add_pet_to_stock(unit, new_pet)
   unit[:pets] << new_pet
end

# 14.
def customer_pet_count(customer)
  pet_count = []
  for person in customer
    pet_count += customer[:pets]
  end
    return pet_count.count
end

# 15.
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

 # # 16/17. Can't work out why this is wrong?
 def customer_can_afford_pet(customer, new_pet)
   customer_funds = []
   for person in customer
     customer_funds << customer[:cash]
   end
   return false if customer_funds.sum < new_pet[:price]
   return true if customer_funds.sum >= new_pet[:price]
 end

# 18. Got very lost here...
# def sell_pet_to_customer(unit, customer, name)
#  pet_found = []
#    for pet in unit[:pets]
#      if pet[:name] == name
#        pet_found << pet
#      end
#    end
#   return pet_found.count += unit[:admin][:pets_sold]
#   return customer[:cash] += unit[:admin][:total_cash]
#   return "insufficient funds" if customer[:cash] < pet[:price]
# end
