def encrypt(a)
  
  len = a.length
  
  index = 0

  while index < len
    a = a + a[index].next
    index += 1
  end
  
  i = len - 1
  
  while i >= 0
    a[i] = ""
    i -= 1
  end
  
p a

end

encrypt("abc")