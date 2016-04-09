#module Shout
#	
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end
#	
#	def self.yell_happily(words)
#		words + "!!!" + " :)" # took the easy way out... SHHH
#	end
#	
#end
#
#p Shout.yell_happily("I love it")
#
#p Shout.yell_angrily("I Lied")


module Shout
	
	def yell(words)
		words.upcase + "!!!"
	end
	
end

# Army Drill Sergeant
class DrillSergeant
	include Shout
end

# Sports fans
class Fans
	include Shout
end

sergeant = DrillSergeant.new
p sergeant.yell("drop down and give me twenty")

fans = Fans.new
p fans.yell("touchdown")