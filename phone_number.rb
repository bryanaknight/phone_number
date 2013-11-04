class PhoneNumber
  attr_reader :phone_number

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    if phone_number.length == 11 && phone_number[0] == "1"
      phone_number[1..-1]
    elsif phone_number.length == 12 && phone_number[0] == "1" && !phone_number.match(/\W/)
      "0000000000"
    elsif phone_number.length == 11
      "0000000000"
    elsif phone_number.length == 9
      "0000000000"
    else
      phone_number.gsub(/\D/, '')
    end
  end

  def area_code
    phone_number[0..2]
  end

  def to_s
    if phone_number.length == 11
      new_num = phone_number[1..-1]
      format_phone_number(new_num)
    else
      format_phone_number(phone_number)
    end 
  end

  def format_phone_number(number)
    "(" + "#{number[0..2]}" + ") " + 
    "#{number[3..5]}" + "-" + 
    "#{number[6..-1]}" 
  end

end
