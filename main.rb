require_relative 'source'
require 'pry'

def valid_ip_addresses (string)
	string.scan(/\d{0,2}[1-9]{1}\.[0-9]{1}\d{0,2}\.[0-9]{1}\d{0,2}\.[1-9]{1}\d{0,2}/)
end 

def valid_mit_ip_addresses (string)
	string.scan(/[18]{2}\.[0-9]{1}\d{0,2}\.[0-9]{1}\d{0,2}\.[1-9]{1}\d{0,2}/)
end

def non_mit_ip_addresses (string)
	string.scan(/\d{0,1}[^18]{2}\.[0-9]{1}\d{0,2}\.[0-9]{1}\d{0,2}\.[1-9]{1}\d{0,2}/)
end 

def valid_phone_numbers (string)
	string.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes(string) 
	string.scan(/[2-9]{1}\d{0,2}\-\d{3}\-\d{4}/).uniq.map{|str| str[0..2]}
end

def email_addresses (string)
	string.scan(/\w+\@\w+\.\w+/).uniq
end

def zip_codes (string)
	string.scan(/\b\d{5}\b/).compact
end

def hex_colors (string)
	string.scan(/\#\h{6}\b/).compact.map {|str| str.sub!('#', '')}
end
