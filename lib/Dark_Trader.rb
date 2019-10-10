#Gems de Scrapping
require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'pry'
require 'rubocop'

def initialize_nogiri(page_url)
#la page des crypto
  page = Nokogiri::HTML(open(page_url))
end

#les tableaux names et values
def dark_trader(page)

  names = []
  values = []

  page.css('td.text-left.col-symbol, a.price').each do |item|
    names <<  item.text
  end

  names.length.times do |variable|
    if variable.even?
      values << {"#{names[variable]}" => names[variable + 1]}
    end
  end
  return values
end

#le perform
def perform
  page = initialize_nogiri("https://coinmarketcap.com/all/views/all/")
  puts dark_trader(page)
end

perform