require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# @store2.employees.create!(first_name: "Lily", last_name: "Potter", hourly_rate: "test")

# Store.create!(name: 'Surrey', annual_revenue: 500, mens_apparel: true, womens_apparel: false)

puts "Enter new store name to add"
store_name = gets.chomp

begin
  Store.create!(name: store_name, mens_apparel: true, womens_apparel: false)
rescue => error
  puts error.message
end