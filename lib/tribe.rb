class Tribe
	attr_accessor :name
	attr_reader :members

	def initialize(options={})
		@name = options[:name]
		@members = options[:members]

		puts "#{@name} was created.".green
	end

	def name
		@name
	end

	def to_s
		@name.to_s
	end

    def tribal_council(immune: nil)
  		@members.reject { |member| member == immune }.sample
	end
end