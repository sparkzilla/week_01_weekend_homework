def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_added)
    return pet_shop[:admin][:pets_sold] += pets_added
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

#return an array

def pets_by_breed(pet_shop, breeds)
pets_array =[]
  for pet in pet_shop[:pets]
    if pet[:breed] == breeds
      pets_array << pet[:pets]
    end
  end
    return pets_array
end

#return a hash

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_hash = Hash.new
      pet_hash[:name] = pet_name
    end
  end
    return pet_hash
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

#pass an array as an argument

def customer_cash(customer)
  return customer[:cash]
end


def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
  return amount
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end


#-----OPTIONAL

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet_name, customer)
  find_pet_by_name(pet_shop, pet_name)
  if pet_hash.count() > 0
    p "Pet is available..."
  else
    p "No such pet"
  end
end
