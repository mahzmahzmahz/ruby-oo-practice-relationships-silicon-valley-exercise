class Startup
    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(new_name, new_domain)
        self.name = new_name 
        self.domain = new_domain
        return self
    end

    def self.find_by_founder(founder)
        self.all.find{|startup| startup.founder == founder}
    end

    def self.domains
        self.all.map{|startup| startup.domain}
    end

    def sign_contract(venture_capitalist, investment_type, investment_amount)
        FundingRound.new(self, venture_capitalist, investment_type, investment_amount)
    end

    def funding_rounds
        FundingRound.all.select{|round| round.startup == self}
    end

    def num_funding_rounds
        funding_rounds.count
    end

    def total_funds
        #binding.pry
        funding_rounds.sum(&:investment)
    end

    def investors
        funding_rounds.select{|round| round.venture_capitalist}.uniq
    end

    def big_investors
         investors.select{|investor| investor.venture_capitalist.total_worth >= 1000000000}
     end



end


# [X] `Startup#sign_contract`
#   - given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# [X] `Startup#num_funding_rounds`
#   - Returns the total number of funding rounds that the startup has gotten
# [X] `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
# [X] `Startup#investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company
# [] `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club




#