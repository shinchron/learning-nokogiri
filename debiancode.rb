#!/usr/bin/env ruby

require 'open-uri'
require 'pp'
require 'nokogiri'

url = 'https://wiki.debian.org/DebianReleases'
html = open(url).read.squeeze("\n")

doc = Nokogiri::HTML.parse(html).xpath('//table').first
doc = doc.xpath('tbody/tr')


doc.each do |tr|
  tr.css('td').each do |td|
    text = td.css('p').inner_text.chomp
    print text.ljust(25)
  end
  puts
end

# puts html
doc = Nokogiri::HTML.parse(html)
puts doc.xpath('//table').to_html
