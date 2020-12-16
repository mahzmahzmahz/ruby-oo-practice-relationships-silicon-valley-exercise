class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        all.select{|vc| vc.net_worth >= 1000000000}
    end

#  [X] `VentureCapitalist#offer_contract`
#     - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

#   - `VentureCapitalist#funding_rounds`
#     - returns an array of all funding rounds for that venture capitalist
    def funding_rounds
        FundingRound.all.select{|round| round.venture_capitalist == self}
    end
 
#   - `VentureCapitalist#portfolio`
#     - Returns a **unique** list of all startups this venture capitalist has funded
    def portfolio
        funding_rounds.map{|round| round.startup}
    end


#   - `VentureCapitalist#biggest_investment`
#     - returns the largest funding round given by this venture capitalist

    def biggest_investment
        #binding.pry
        funding_rounds.max_by{|round| round.investment}
    
    end

#   - `VentureCapitalist#invested`
#     - given a **domain string**, returns the total amount invested in that domain
    def invested(domain_name)
       # binding.pry
       #funding_rounds.map{|round| round.domain}
       inv = funding_rounds.map{|round| round.investment if round.startup.domain == domain_name}.compact
       inv.sum
    end


  



end




# [X] `VentureCapitalist#name`
#   - returns a **string** that is the venture capitalist's name
# [X] `VentureCapitalist#total_worth`
#   - returns a **number** that is the total worth of this investor (e.g., think of it as how much money they have)
# [X] `VentureCapitalist.all`
#   - returns an array of all venture capitalists
# [] `VentureCapitalist.tres_commas_club`
#   - returns an array of all venture capitalists in the Trés Commas club (they have more then 1,000,000,000 `total_worth`)