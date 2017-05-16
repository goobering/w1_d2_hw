def even_or_odd(num)
  return num.even?
end

def suggest_food(hunger)
  menu = []

  if hunger >= 9
    menu.push("Soup")
    menu.push("Chicken")
    menu.push("Steak")
  elsif hunger >= 7
    menu.push("Soup")
    menu.push("Chicken")
  elsif hunger >= 4
    menu.push("Soup")
  else
    menu.push("Salad")
  end

  return menu
end

def trouble(aSmile, bSmile)
  return aSmile == bSmile ? true : false
end