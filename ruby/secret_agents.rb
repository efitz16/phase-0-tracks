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
		else

			i = "abcdefghijklmnopqrstuvwxyz".index(y[count])
			decrypted_code = decrypted_code + "abcdefghijklmnopqrstuvwxyz"[i-1]
		end
		count += 1
	end
	
	p decrypted_code
	
end


#decrypt("bz!d")

#interface:

puts "Would you like to encrypt or decrypt a password?"

choice = gets.chomp

puts "What's your password?"

password = gets.chomp

case choice

when "encrypt"
	encrypt(password)
when "decrypt"
	decrypt(password)
end