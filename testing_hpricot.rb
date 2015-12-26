require 'rubygems'
require 'hpricot'
require 'open-uri'

doc = Hpricot(open('https://www.reddit.com'))
puts doc.search("p class=\"title\"").each do |item|
	puts item.inner_html
end
