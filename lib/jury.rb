class Jury

	attr_accessor :members, :final_votes
	
	def initialize(members = Array.new, final_votes = Hash.new)
		@members = members
		@final_votes = final_votes
	end

	def add_member(member)
		@members << member
	end

	def cast_votes(finalists)
		@members.each do |member|
			vote = finalists.shuffle.first
			if @final_votes.has_key?(vote)
				@final_votes[vote] += 1
			else
				@final_votes[vote] = 1
			end

			puts "#{member} voted for #{vote}"
		end
		return @final_votes
	end

	def report_votes(final_votes)
		final_votes.each do |finalist, votes|
			puts "#{finalist} got #{votes} votes!"
		end
	end

	def announce_winner(final_votes)
		self.report_votes(final_votes)
		winner = final_votes.max_by{|k,v| v}
		puts "#{winner.first} won the game"
	end

end

