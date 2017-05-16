def return_10()
  return 10
end

def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
  return num_1 - num_2
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def divide(num_1, num_2)
  return num_1 / num_2
end

def length_of_string(test_string)
  return test_string.length()
end

def join_string(string_1, string_2)
  return "#{string_1}#{string_2}"
end

def add_string_as_number(string_1, string_2)
  return string_1.to_i() + string_2.to_i()
end

def number_to_full_month_name(month_number)
  case month_number

  when 1
    return "January"
  when 2
    return "February"
  when 3
    return "March"
  when 4
    return "April"
  when 5
    return "May"
  when 6
    return "June"
  when 7
    return "July"
  when 8
    return "August"
  when 9
    return "September"
  when 10
    return "October"
  when 11
    return "November"
  when 12
    return "December"
  end

end

def number_to_short_month_name(month_number)
  return number_to_full_month_name(month_number)[0..2]
end

def cube_volume(dimension)
  return dimension ** 3
end

def sphere_volume(radius)
  return 4/3 * Math::PI * radius ** 3
end

def fahrenheit_to_celsius(temp)
  return temp - 32 * 5 / 9
end