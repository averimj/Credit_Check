require 'pry'
class CreditCheck

  def initialize
    @card_numb = "5541808923795240"
    @numbers = []
  end

  def reverse
    @card_numb = "5541808923795240".reverse
  end

  def chars
    @numbers = @card_numb.chars
  end

  def integers
    @digits = []
    @numbers.each do |number|
      num = number.to_i
    @digits << num
    end
    @digits
  end
   # p numbers
  #p digits

  def doubled
    @doubled = []
    @digits.each_with_index do |item, index|
      if index.odd?
        @doubled << item * 2
      else
        @doubled << item
      end
    end
  end
   # p doubled

  def minus_nine
    @add_digits = []
    @doubled.each do |single_num|
      if single_num > 9
        @add_digits << single_num - 9
      else
        @add_digits << single_num
      end
    end
  end
  # p add_digits

  def add
    @total_digits = @add_digits.sum
  end
  # p total_digits

  def modulo
    if @total_digits % 10 == 0
      puts "The number is valid"
    else
      puts "The number is invalid!"
    end
  end

  def valid_number?
    if @total_digits % 10 == 0
      true
    else
      false
    end
  end

  def validation_output
    reverse
    chars
    integers
    doubled
    minus_nine
    add
    modulo
    if valid_number? == true
      puts "The number #{@card_numb} is valid"
    else
      puts "The number #{@card_numb} is invalid"
    end
  end
end
