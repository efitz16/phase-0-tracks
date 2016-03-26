def encrypt(a)
  
  len = a.length
  
  index = 0

  while index < len
  	if a[index] == "z"
  		a[-len] = "a"
  		a = a + a[-len]
  	else
		a = a + a[index].next
	end
    index += 1
  end
  
  i = len - 1
  
  while i >= 0
    a[i] = ""
    i -= 1
  end
  
  p a

end

#encrypt("abc")

def decrypt(y)

	len = y.length

	count = 0

	decrypted_code = ""

	while count < len
		if y[count] == "!"
			decrypted_code[count] = " "
		elsif y[count] == "0" || y[count] == "1" || y[count] == "2" || y[count] == "3" || y[count] == "4" || y[count] == "5" || y[count] == "6" || y[count] == "7" || y[count] == "8" || y[count] == "9"
			i = "0123456789".index(y[count])
			decrypted_code = decrypted_code + "0123456789"[i-1]
		elsif y[count] == y[count].upcase
			i = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".index(y[count])
			decrypted_code = decrypted_code + "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[i-1]
		else

			i = "abcdefghijklmnopqrstuvwxyz".index(y[count])
			decrypted_code = decrypted_code + "abcdefghijklmnopqrstuvwxyz"[i-1]
		end
		count += 1
	end
	
	p decrypted_code
	
end

#decrypt(encrypt("The duck flies at midnight"))

#decrypt("bz!d")

#interface:

puts "Would you like to encrypt or decrypt a password?"

choice = gets.chomp

puts "What's your password? (for decryption: NO SYMBOLS, except '!'; only letters--lower and uppercase--and numbers)"

password = gets.chomp

case choice

when "encrypt"
	encrypt(password)
when "decrypt"
	decrypt(password)
end