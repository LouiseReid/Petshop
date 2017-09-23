# 1.
def pet_shop_name(shop)
  return shop[:name]
end

# 2.
def total_cash(value)
  return value[:admin][:total_cash]
end

# 3.
def add_or_remove_cash(unit, added)
  unit[:admin][:total_cash] += added
end

# 4.
def add_or_remove_cash(unit, minus)
  unit[:admin][:total_cash] += minus
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

# # 8.
def pets_by_breed(unit, breed)
  num_of_breed =[]
  for pet in unit[:pets]
    if pet[:breed] == breed
      num_of_breed << breed
    end
  end
  return num_of_breed
end

# 9.
def pets_by_breed2(unit, breed)
  not_found =[]
    for pet in unit[:pets]
     if pet[:breed] == breed
       not_found << breed
     end
   end
   return not_found
end

# 10.
def find_pet_by_name(unit, name)
  pet_name = []
    for pet in unit[:pets]
      if pet[:name] == name
        pet_name << pet
      end
    end
    return pet_name[0]
end

# 11. I think im cheating with the return nil line?
def find_pet_by_name2(unit, name)
  for pet in unit[:pets]
    if pet[:name] != name
      return nil
    end
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

# 13. Not sure if this is too simple and answe and
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
# def add_pet_to_customer(customer, new_pet)
#   # add customer to @customers at index 0
#
#   # add pet to customer so pet count of customers =1
# end

# 16.
def customer_can_afford_pet1(customer, new_pet)
  customer_funds = []
  for person in customer
    customer_funds << customer[:cash]
  end
  customer_funds.sum <= new_pet[:price]
end

# 17.
def customer_can_afford_pet2(customer, new_pet)
  customer_funds = []
  for person in customer
    customer_funds << customer[:cash]
  end
  customer_funds.sum >= new_pet[:price]
end

# Above question split into 2 methods, don't
# understand why below doesn't work as one for
# both tests?

# def customer_can_afford_pet(customer, new_pet)
#   customer_funds = []
#   for person in customer
#     customer_funds << customer[:cash]
#   end
#     if customer_funds.sum <= new_pet[:price]
#       return false
#     else
#       customer_funds.sum >=new_pet[:price]
#       return true
#     end
#   end

# 18.
# def sell_pet_to_customer(unit, customer, name)
#  pet_to_sell = []
#    # find pet in shop
#   for pet in unit[:pets]
#     if pet[:name] = name
#       pet_to_sell << pet
#     end
#   end
#   # move pet to customer
#
#   # pet sold increases
#
#   # price of pet deducted from customer and added to
#   # total_cash
# end
