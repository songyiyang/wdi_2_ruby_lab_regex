require_relative 'source'
require 'pry'

def valid_ip_addresses (string)
	string.scan(/[1-9]{1}\d{0,2}\.[0-9]{1}\d{0,2}\.[0-9]{1}\d{0,2}\.[1-9]{1}\d{0,2}/)
end 

def valid_mit_ip_addresses (string)
	string.scan(/[18]{2}\d{0,1}\.[0-9]{1}\d{0,2}\.[0-9]{1}\d{0,2}\.[1-9]{1}\d{0,2}/)
end

def non_mit_ip_addresses (string)
	string.scan(/\d{0,1}[^18]{2}\.[0-9]{1}\d{0,2}\.[0-9]{1}\d{0,2}\.[1-9]{1}\d{0,2}/)
end 

def valid_phone_numbers (string)
	string.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end
#(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
def area_codes(string) 
	a = []
	string.scan(/[1]{1}?\-?[2-9]{1}\d{2}\-\d{0,3}\-?\d{4}/).each do |str|
		if str.split('-').length == 3
			a << str.split('-')[0]
		elsif str.split('-').length == 4
			a << str.split('-')[1]
		end
	end
	return a.uniq
end

def email_addresses (string)
	string.scan(/\w+\@\w+\.\w+/).uniq
end

def zip_codes (string)
	a = string.scan(/\b\d{5}\b/).compact
end

def hex_colors (string)
	a = []
	string.scan(/\#(.)(.)(.)(.)(.)(.)/).uniq.each do |str|
		flag = false
		for i in 0..5
			#binding.pry
			if str[i].hex <= 0 || str[i].hex >= 16
				flag = false
			elsif str == '000000'
				flag = true
			else flag = true
			end
		end
		if flag == true
			a << str.join
		end
	end
	return a
end
