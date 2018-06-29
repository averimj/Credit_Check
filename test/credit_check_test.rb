require "./lib/credit_check.rb"
require "minitest/autorun"
require "minitest/pride"

class CreditCheckTest < Minitest::Test

  def test_it_exist
    credit_check = CreditCheck.new
    assert_instance_of CreditCheck, credit_check
  end

  def test_it_reverse
    credit_check = CreditCheck.new
    assert_equal "0425973298081455", credit_check.reverse
  end

  def test_it_chars
    credit_check = CreditCheck.new
    credit_check.reverse
    assert_equal ["0", "4", "2", "5", "9", "7", "3", "2", "9", "8", "0", "8", "1", "4", "5", "5"], credit_check.chars
  end

  def test_it_integers
    credit_check = CreditCheck.new
    credit_check.reverse
    credit_check.chars
    assert_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5], credit_check.integers
  end
end
