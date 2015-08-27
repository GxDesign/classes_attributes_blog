require_relative "Person.rb"
require_relative "Dog.rb"

require 'pry'

require 'date'


class Generate_HTML

	#first we create an instance of the class Person.

	person = Person.new

	#Keep in mind that the variable is NOT actually your name. You set the variable equal to Person.new, which means the variable is assigned to an object, an instance of the class person. Objects have ids like...

	#Because your variable is now an object (instance of Person), you can use all of the built in methods of that Person class, such as .name.

	person.name = "INSERT NAME, one word"

	person.gender = "INSERT male OR female"

	person.color = "INSERT white, tan, brown or black"


	dog = Dog.new

	dog.name = "INSERT NAME, one word"

	dog.color = "INSERT brown, white, tan, or black"

	dog.breed = "INSERT yorkie, labrador, bulldog or great dane"





	#LETS CREATE OUR FILE!

	#you can create unique file names by interpolating variables. For our file name, we will use your name, your dogs name and today's date.

	#we can get today's date with the following method (but first, require the 'date' gem)

	date = Date.today 
	#store today's date as a variable called date. Now we can call methods on it from the Date class such as .month, .day and .year

	#you can also add a file path to your file name!


    file_name = "#{person.name}_#{dog.name}_#{date.month}-#{date.day}.html"
                #ex. "giancarlo_perry_8-25.html"

    #then we create our file using the following method. the W+ flag means that it is writable. 

	file = File.open(file_name, "w+")

	#Now, our file is ready for writing! Below is a template that ive created that uses the instance variables you created above. 
	#see a variable you didnt set? Check out the model for that class!

	#first we send in our stylesheet
    css = "<link rel=\"stylesheet\" href=\"css/stylesheet.css\" type=\"text/css\">"
    file.write(css)

    #then we send in our html template, notice the interpolated variables...
    #then we send in our html template
	html = "<div class=\"flex-container\">

				<div id=\"person\" >
				<img src=\"images/#{person.silhouette}\" style=\"background: #{person.color}\">
				</div>
                
				<div id=\"dog\">
					<div class=\"bubble-container\">
						<div>
						<img class=\"bubble\" src=\"images/bubble.png\" />
						<div class=\"bubble-text\">
						Hi, I\'m #{person.name}, <br> and this is #{dog.name}
						</div>
						</div>
					</div>
				<img class=\"dog\" src=\"images/#{dog.silhouette}\" 
					style=\"background: #{dog.color}\">
				</div>

			</div>"


    file.write(html)
    file.close

    `open #{file_name}`

    #Thats it! In your terminal, type "ruby run.rb" to generate and open your html file. You can find your file inside of the best_pals folder. To generate a new file, simply use a new name for person or dog. 

end
