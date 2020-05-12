class RomanConversor
  def getRomansNumberHash
	  {
		  "C" => 100,
		  "XC" => 90,
		  "L" => 50,
		  "XL" => 40,
		  "X" => 10,
		  "IX" => 9,
		  "V" => 5,
		  "IV" => 4,
		  "I" => 1
	  }
  end
  def convert number
     roman_numbers = getRomansNumberHash
     result = ""
     roman_numbers.map do |literal, value|
       division_result, residue = number.divmod value
       result.concat(literal * division_result)
       number = residue
     end
     result
  end
end