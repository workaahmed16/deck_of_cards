class Book
	attr_accessor :name, :author
  def initialize(name,author)
    @name = name
    @author = author
  end

  	   def show_me_the_money
    	puts "#{@name}, was written by #{@author}! I recomment this book!"
    end
end