require 'nokogiri'
require 'open-uri'
require 'ostruct'
require 'yaml'

require_relative 'works/github'
require_relative 'works/gitlab'

puts "Search username..."
search = gets.chomp
puts "please wait..."

#puts Github.works(search)
puts Gitlab.works(search)