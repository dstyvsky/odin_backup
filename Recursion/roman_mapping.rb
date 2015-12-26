def numerals(roman_mapping, num, array)
	case num
	when 1
		array << "I"
	when 4
		array << "IV"
	when 

	roman_mapping(num/1000.to_sym)


end

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

puts numerals(123)