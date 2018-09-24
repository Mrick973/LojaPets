# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Loja.delete_all
# Loja.create!(name: 'Petz', phone: '555-5555', address:'Rua Pedralva, 171, alto de pinheiro, São Paulo',latitude: 48.862725, longitude: 2.287592000000018)
# Loja.create!(name: 'Cobasi', phone: '555-5555', address: 'Rua Bandeira Paulista, 982, São Paulo')
# Loja.create!(name: 'Petlove', phone: '555-5555', address: 'Rua Bandeira Paulista, 982, São Paulo')


require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'
require 'pry'

PAGE_URL = 'https://www.google.com/maps/search/pet+shop/@-23.5546996,-46.6946825,15z/data=!3m1!4b1'

page = Nokogiri::HTML(open PAGE_URL)
p products_divs = page.search('div.section-result-title-container')
p products_div = page.search('span.jstcache')


#  products_divs.each do |pr|
#   @names = pr.search('.product-item__name').textrllt__wrapped
#   @brand = pr.search('.product-item__brand').text
#   @subname = pr.search('.product-item__subname').text
#   @price = pr.search('.product-item__price').text
#   lojas << {name: @names, brand: @brand, subname: @subname, price: @price}  
# end

#   lojas.first(10).each do |r|
#     puts "Ce parfum : #{r[:name]} de la marque #{r[:brand]}, #{r[:price]}"
#    end