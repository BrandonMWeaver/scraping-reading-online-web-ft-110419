require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
puts doc.css(".headline-26OIBN").text.strip

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

courses.each { |course|
  puts course.text.strip
}
