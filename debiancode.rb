#!/usr/bin/env ruby

require 'open-uri'
require 'pp'
require 'nokogiri'

url = 'https://wiki.debian.org/DebianReleases'
html = open(url).read
doc.xpath('//h2')

# puts html
doc = Nokogiri::HTML.parse(html)
puts doc.xpath('//table').to_html
