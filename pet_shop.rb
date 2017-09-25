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
# def find_pet_by_name(unit, name)
#   pet_name = []
#     for pet in unit[:pets]
#       if pet[:name] == name
#         pet_name << pet
#       end
#     end
#     return pet_name[0]
#     if name != pet[:name]
#       return nil
#     end
# end

def find_pet_by_name(unit, name)
  for pet in unit[:pets]
    return pet if pet[:name] == name
  end
  return nil
end


# 12.
def remove_pet_by_name(unit, name)
  for pet in unit[:pets]
    if pet[:name] == name
      unit[:pets].delete(pet)
    end
  end
end

# def remove_pet_by_name(unit, name)
# unit[:pets].delete(find_pet_by_name(unit, name))
# end

# 13.
def add_pet_to_stock(unit, new_pet)
   unit[:pets] << new_pet
end

# 14.
def customer_pet_count(customer)
  return customer[:pets].length()
end

# 15.
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

 # # 16/17.
def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price] ? true : false
end

# 18.
def sell_pet_to_customer(pet_shop, pet, customer)
  if (pet != nil)
    if customer_can_afford_pet(customer, pet)
  add_pet_to_customer(customer, pet)
  increase_pets_sold(pet_shop, 1)
  add_or_remove_cash(pet_shop, pet[:price])
    end
  end
end
