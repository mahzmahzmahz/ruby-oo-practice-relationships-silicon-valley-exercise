class FundingRound

    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment

    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment.to_i
        @@all << self
    end

    def self.all
        @@all
    end
end


# [X] `FundingRound#startup`
#   - returns the startup object for that given funding round
#   - Once a funding round is created, I should not be able to change the startup
# [X] `FundingRound#venture_capitalist`
#   - returns the venture capitalist object for that given funding round
#   - Once a funding round is created, I should not be able to change the venture capitalist
# [X] `FundingRound#type`
#   - returns a **string** that is the type of funding round
#   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
# [X] `FundingRound#investment`
#   - returns a **number** that is the amount invested during this funding round
#   - This should be a float that is not a negative number.
# [X] `FundingRound.all`
#   - returns all of the funding rounds