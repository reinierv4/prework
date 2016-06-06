#caesar solving code
def solve_cipher(word)
   for i in 1..word.length do 
   secreto = word[i].ord() -1  
   array_moriarty.push(secreto.chr)  
	end
	print array_moriarty
end
solve_cipher("ifmmp")
# should return "hello"