require "minitest/autorun"
require "minitest/rg"
require_relative "day_2_hw_ext"

class Day_2_hw_ext < MiniTest::Test

  def test_even_or_odd()
    large_negative_odd_result = even_or_odd(-200000001)
    large_negative_even_result = even_or_odd(-200000000)
    small_negative_odd_result = even_or_odd(-1)
    zero_result = even_or_odd(0)
    small_positive_odd_result = even_or_odd(1)
    small_positive_even_result = even_or_odd(2)
    large_positive_even_result = even_or_odd(200000000)
    large_positive_odd_result = even_or_odd(200000001)

    assert_equal(false, large_negative_odd_result)
    assert_equal(true, large_negative_even_result)
    assert_equal(false, small_negative_odd_result)
    assert_equal(true, zero_result)
    assert_equal(false, small_positive_odd_result)
    assert_equal(true, small_positive_even_result)
    assert_equal(false, large_positive_odd_result)
    assert_equal(true, large_positive_even_result)
  end

  def test_suggest_food()
    large_negative_result = suggest_food(-200000000)
    small_negative_result = suggest_food(-1)
    zero_result = suggest_food(0)
    soup_min_result = suggest_food(4)
    soup_max_result = suggest_food(6)
    chicken_min_result = suggest_food(7)
    chicken_max_result = suggest_food(8)
    steak_min_result = suggest_food(9)
    large_positive_result = suggest_food(200000000)

    salad = ["Salad"]
    soup = ["Soup"]
    chicken = soup.clone().push("Chicken")
    steak = chicken.clone().push("Steak")

    assert_equal(salad, large_negative_result)
    assert_equal(salad, small_negative_result)
    assert_equal(salad, zero_result)
    assert_equal(soup, soup_min_result)
    assert_equal(soup, soup_max_result)
    assert_equal(chicken, chicken_min_result)
    assert_equal(chicken, chicken_max_result)
    assert_equal(steak, steak_min_result)
    assert_equal(steak, large_positive_result)
  end

  def test_trouble()
    # Sourced from https://asciinema.org/a/20175
    # Attributed to Brooke Kuhlmann (bkuhlmann): https://asciinema.org/~bkuhlmann
    # Produces [[true, true], [true, false], [false, true], [false, false]]
    table = [true, false].repeated_permutation(2).to_a
    # End attribution

    results = []

    table.each { |entry|
      results.push(trouble(entry[0], entry[1]))
    }

    assert_equal(true, results[0])
    assert_equal(false, results[1])
    assert_equal(false, results[2])
    assert_equal(true, results[3])

  end

end
