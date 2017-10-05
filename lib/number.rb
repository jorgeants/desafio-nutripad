class Number
	WORDS = {
		0 => 'zero',
		1 => 'one',
		2 => 'two',
		3 => 'three',
		4 => 'four',
		5 => 'five',
		6 => 'six',
		7 => 'seven',
		8 => 'eight',
		9 => 'nine',
		10 => 'ten',
		11 => 'eleven',
		12 => 'twelve',
		13 => 'thirteen',
		14 => 'fourteen',
		15 => 'fifteen',
		16 => 'sixteen',
		17 => 'seventeen',
		18 => 'eighteen',
		19 => 'nineteen',
		20 => 'twenty',
		30 => 'thirty',
		40 => 'forty',
		50 => 'fifty',
		60 => 'sixty',
		70 => 'seventy',
		80 => 'eighty',
		90 => 'ninety'
	}

	DIVISIONS = {
		100 => 'hundred',
		1_000 => 'thousand',
		1_000_000 => 'million',
		1_000_000_000 => 'billion'
	}

	def convert_to_word (number)
		if number.is_a?(Integer)
			if !(number < 0)
				extended_number = find (number)
				extended_number
			else
				raise 'It is not positive number'
			end
		else
			raise 'It is not integer number'
		end
	end

	def find (key)
		result = self.find_or_separe (key)
		result = result.join(" ") if result.kind_of?(Array)
		result
	end

	def find_or_separe (key)
		WORDS.key?(key) ? WORDS[key] : self.separe_digits(key)
	end

	def separe_digits (number)
		total_digits = number.to_s.size
		array_extended_numbers = []
		divisor = 0

		case total_digits
		when 3
			divisor = 100
		when 4..6
			divisor = 1_000
		when 7..9
			divisor = 1_000_000
		when 10..12
			divisor = 1_000_000_000
		else
			zero = ''
			number.to_s.chars.reverse.each do |d|
				fill_number = d.to_s + zero
				array_extended_numbers << find_or_separe(fill_number.to_i).to_s if d.to_i != 0
				zero += '0'
			end
		end

		if divisor != 0
			digits = number.digits(divisor)
			array_extended_numbers << find_or_separe(digits[0].to_i) if digits[0].to_i != 0
			array_extended_numbers << DIVISIONS[divisor]
			other_number = find_or_separe(digits[1].to_i)
			array_extended_numbers << other_number
		end

		array_extended_numbers.reverse
	end
end
