class Game
	attr_reader :tribes

	def initialize(*args)
		@tribes = Array.new

		args.each do |tribe|
			@tribes.push(tribe)
		end
	end

	def add_tribe(tribe)
		@tribes.push(tribe)
	end

	def immunity_challenge
		@tribes.shuffle.first
	end

	def individual_immunity_challenge
		@tribes[0].members.sample
	end

	def clear_tribes
		@tribes.clear
	end

	def merge(name)
		name = Tribe.new({name: name, members: []})
		@tribes.each do |tribe|
			tribe.members.each do |member|
				name.members.push(member)
			end
		end		
		return name
	end
end