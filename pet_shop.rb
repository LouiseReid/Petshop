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

# # 10.
def find_pet_by_name(unit, name)
    for pet in unit[:pets]
      if pet[:name] == name
        return name
      end
    end
    return nil
end

# 12.
# def remove_pet_by_name(unit, name)
#   name_to_remove = []
#   for pet in unit[:pets]
#     if pet[:name] == name
#       name_to_remove += name
#     end
#   end
#   return name_to_remove.pop(name)
# end
