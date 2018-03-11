require 'test/unit'
require_relative 'equilibrium'

class TestEqui < Test::Unit::TestCase
  def test_random
    sample_array = [-7, 1, 5, 2, -4, 3, 0]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, 3
  end

  def test_random_with_nil_last
    sample_array = [-7, 1, 5, 2, -4, 3, 0, nil]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, 3
  end

  def test_random_with_nil_first
    sample_array = [nil,-7, 1, 5, 2, -4, 3, 0]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, 3
  end

  def test_random_with_nil_and_string
    sample_array = [nil,-7, 1, 5, 2, -4, 3, 0, "a"]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, "Sorry! , Either all or some elements of array are not Integer"
  end
 
  def test_trivial_palindrom
    sample_array = [1, 2, 3, 4, 3, 2, 1]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, 3
  end

  def test_biggest_first
    sample_array = [99, 0, 66, 32, 1]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, 1
  end
  
  def test_biggest_last
    sample_array = [66, 32, 1, 0, 99]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, 3
  end
  
  def test_single_element
    sample_array = [0]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, nil
  end
  
  def test_single_nil
    sample_array = [nil]
    expected = Equilibrium.equi(sample_array)
    assert_equal expected, nil
  end

end