	#caesar solving code
	def solve_cipher(word)
	  array_moriarty = word.split("")
	  push_sherlock = []
	  array_moriarty.each do |n| 
	  	secreto = n.to_s.ord() -1
	    push_sherlock.push(secreto.chr)
	    
	  end
	  print push_sherlock.push.join
	  
	end
	solve_cipher("ifmmp")
	# should return "hello"







