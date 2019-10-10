require_relative '../lib/Dark_Trader'

describe "the dark_trader method" do
  it "should return a tab of hashes" do
    expect(dark_trader(Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")))).not_to be_nil
  end
end


