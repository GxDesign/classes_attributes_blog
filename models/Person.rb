

class Person

	attr_reader(:gender)
	attr_accessor(:name, :color, :dog)

	def gender=(gender)
		@gender = gender
		case @gender
		when "male"
			@silhouette = "male.png"
		when "female"
			@silhouette = "female.png"
		end
		return @gender
	end

	def color=(color)
		case color
		when "white"
			@color = "#FFEFE2"
		when "tan"
			@color = "tan"
		when "brown"
			@color = "#865630"
		when "black"
			@color = "#25190F"
		end
		return @color 
	end
	

	def silhouette
		@silhouette
	end

end

