def encrypt(x)
  x = x + x[-1].next
  x.delete(x[0])
end

encrypt("abc")

def decrypt
  answer = encrypt("abc")
  a = "abcdefghijklmnopqrstuvwxyz".index(answer[0])
  
  answer.reverse!
  
  answer = answer + "abcdefghijklmnopqrstuvwxyz"[a-1]

  answer = answer.delete(answer[0])
  
p    answer.reverse!
  
end

decrypt