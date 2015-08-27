class Dog

	attr_accessor(:name)
	attr_reader(:breed, :color)

	def breed=(breed)
		@breed = breed
		case @breed
		when "yorkie"
			@silhouette = "yorkie.png"
		when "labrador"
			@silhouette = "labrador.png"
		when "bulldog"
			@silhouette = "bulldog.png"
		when "great dane"
			@silhouette = "greatdane.png"
		end
		return @breed
	end

	def color=(color)
		@color = color
		case @color 
		when "tan"
			@color = "#B7915E"
		when "brown"
			@color = "#6F3518"
		when "white"
			@color = "#FFEFE2"
		when "black"
			@color = "#25190F"
		end
		return @color
	end

	def silhouette
		@silhouette
	end

end
