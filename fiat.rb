require 'nokogiri'
require 'open-uri'

fiat = open( "https://www.worldcoinindex.com/coin/neblio")
document = Nokogiri::HTML(fiat)

usd = document.xpath("/html/body/div[2]/div[3]/div[1]/div[2]/div[1]/div[2]/span[2]").inner_html
k = usd.gsub(/\s+/, "")

percent = open( "https://www.worldcoinindex.com/coin/neblio")
documentx = Nokogiri::HTML(percent)

fix = documentx.xpath("/html/body/div[2]/div[3]/div[1]/div[2]/div[1]/div[2]/span[3]/span").inner_html
b = fix.gsub(/\s+/, "")
x = " Δ (#{b})"
print k ; print x






