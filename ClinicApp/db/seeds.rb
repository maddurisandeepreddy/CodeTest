# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Doctor.create(:name => "Bob" , :profile_attributes => {:address => "This is bob address", :zip => "12323", :yop=>2})
Doctor.create(:name => "Susan" , :profile_attributes => {:address => "This is susan address" , :zip => "12312",:yop => 3})

Customer.create(:name => "Kumar")
Customer.create(:name => "Rajesh")
