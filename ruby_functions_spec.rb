require "minitest/autorun"
require "minitest/rg"
require_relative "ruby_functions_practice"

class Functions_Practice < MiniTest::Test

  def test_return_10()
    return_10_result = return_10()
    assert_equal(10, return_10_result)
  end

  def test_add()
    add_result = add(1, 2)
    assert_equal(3, add_result)
  end

  def test_subtract()
    subtract_result = subtract(10, 5)
    assert_equal(5, subtract_result)
  end

  def test_multiply()
    multiply_result = multiply(4, 2)
    assert_equal(8, multiply_result)
  end

  def test_divide()
    divide_result = divide(10, 2)
    assert_equal(5, divide_result)
  end

  def test_length_of_string()
    test_string = "A string of length 21"
    length_of_string = length_of_string(test_string)
    assert_equal(21, length_of_string)
  end

  def test_join_string()
    string_1 = "Mary had a little lamb, "
    string_2 = "it's fleece was white as snow"
    joined_string = join_string(string_1, string_2)
    assert_equal("Mary had a little lamb, it's fleece was white as snow", joined_string)
  end

  def test_add_string_as_number()
    add_result = add_string_as_number("1", "2")
    assert_equal(3, add_result)
  end

  def test_number_to_full_month_name()
    first_month_string = number_to_full_month_name(1)
    third_month_string = number_to_full_month_name(3)
    ninth_month_string = number_to_full_month_name(9)
    assert_equal("January", first_month_string)
    assert_equal("March", third_month_string)
    assert_equal("September", ninth_month_string)
  end

  def test_substring()
    first_month_string = number_to_short_month_name(1)
    third_month_string = number_to_short_month_name(3)
    ninth_month_string = number_to_short_month_name(9)
    assert_equal("Jan", first_month_string)
    assert_equal("Mar", third_month_string)
    assert_equal("Sep", ninth_month_string)
  end

  #Further

  #Given the length of a side of a cube calculate the volume
  def test_volume_of_cube()
    first_volume = cube_volume(1)
    second_volume = cube_volume(3)
    third_volume = cube_volume(5)
    assert_equal(1, first_volume)
    assert_equal(27, second_volume)
    assert_equal(125, third_volume)
  end

  #Given the radius of a sphere calculate the volume
  def test_volume_of_sphere()
    first_volume = sphere_volume(1)
    second_volume = sphere_volume(3)
    third_volume = sphere_volume(5)
    assert_equal(4/3 * Math::PI * 1 ** 3, first_volume)
    assert_equal(4/3 * Math::PI * 3 ** 3, second_volume)
    assert_equal(4/3 * Math::PI * 5 ** 3, third_volume)
  end

   #Given a value in farenheit, convert this into celsius.
  def test_fahrenheit_to_celsius()
    first_temp = fahrenheit_to_celsius(1)
    second_temp = fahrenheit_to_celsius(3)
    third_temp = fahrenheit_to_celsius(5)
    assert_equal(1 - 32 * 5 / 9, first_temp)
    assert_equal(3 - 32 * 5 / 9, second_temp)
    assert_equal(5 - 32 * 5 / 9, third_temp)
  end

 end
