class HomeController < ApplicationController
  def index
    # require 'net/http'
    # require 'json'


    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ['BTC','XRP','ADA','STEEM']

  end
def lookup

      @url = 'https://api.coinmarketcap.com/v1/ticker/'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @lookup_coin = JSON.parse(@response)


@symbol = params[:search]
if @symbol
@symbol =  @symbol.upcase
if @symbol != ''&& @symbol.size > 4
@symbol = "Not a valid Currency!"
end
end
  if @symbol == ''
  @symbol = "Hey you forgot to enter a Currency!"
  end

end


  def about

  end
end
