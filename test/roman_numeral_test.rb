require "test/unit"

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '../lib')
require "roman_numeral"

class TestRomanNumeral < Test::Unit::TestCase

  TESTS = {
    'X' => 10,
    'I' => 1,
    'II' => 2,
    'III' => 3,
    'IV' => 4,
    'VI' => 6,
    'XIV' => 14,
    'XXIX' => 29,
    'CCXCI' => 291
   }

  TESTS.each do |roman, arabic|
    define_method("test_convert_roman_to_arabic_#{arabic}".to_sym) do
      roman_num = RomanNumeral.new(roman)
      assert_equal arabic, roman_num.to_i
    end
  end
end
