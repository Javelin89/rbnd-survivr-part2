class Tribe
	attr_accessor :members, :name

	def initialize(options={})
		@name = options[:name]
		@members = options[:members]

		puts "#{@name} was created."
	end

	def name
		@name
	end

	def tribal_council(immune = nil) #take an optional immune candidate and returns an eliminated candidate
        eliminated_contestant = immune
        until eliminated_contestant != immune do
            eliminated_contestant = @members.sample
        end
        return eliminated_contestant
    end
end