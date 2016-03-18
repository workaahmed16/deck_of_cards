class Card
	attr_accessor :rank, :suit


	def initialize (rank, suit)
		@rank = rank
		@suit = suit
	end

	def output_card
		puts "#{self.rank} of #{self.suit}"
	end

	def self.random_card_spades #You don't have a card yet but you are running a method that requires it. So that is why you are using the self in place of "Card"
		Card.new(rand(1..10), :spades)
	end

	def self.random_card_hearts
		Card.new(rand(1..10), :hearts)
	end

	def self.random_card_diamonds
		Card.new(rand(1..10), :diamonds)
	end

	def self.random_card_clubs
		Card.new(rand(1..10), :clubs)
	end

end

class Deck
	def initialize
		@amt = 0
		@cards = []
		@ranks = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K']
        @suits = [:spades, :diamond, :clubs, :hearts]

        @suits.each do |suit|
        	@ranks.each do |rank|
        		@cards << Card.new(rank, suit)
        	end
        end
	end

	def output
		@cards.each do |card|
			card.output_card
		end
	end

	def count
		@amt = @cards.count
		puts "Their are #{@amt} cards in this deck!"
	end

	def shuffle
		@cards.shuffle!
	end

	def deal
		@cards.shift
	end

end

deck = Deck.new
deck.count
deck.shuffle
deck.deal
deck.output
deck.count




		
		