module Shout
	
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	
	def self.yell_happily(words)
		words + "!!!" + " :)" # took the easy way out... SHHH
	end
	
end

Shout.self.yell_happily("I love it")

Shout.self.yell_angrily("I Lied")