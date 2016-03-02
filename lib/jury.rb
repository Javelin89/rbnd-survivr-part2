class Jury

	attr_accessor :members, :final_votes
	
	def initialize(members = Array.new)
		@members = members
		@final_votes = Hash.new
	end

	def add_member(member)
		@members << member
	end

	def cast_votes(finalists)
		@members.each do |member|
			vote = finalists.sample
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
		final_votes.max_by{|k,v| v}.first
	end

end

