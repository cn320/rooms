# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

res = [{:name => 'litu' , :room_id => 'engr313'}]

user = [{:username => 'naidkub' , :password => 'honhon'}]

res.each do |r|
  Reserve.create!(r)
end

<<<<<<< HEAD
user.each do |u|
=======
users=[{:username => 'naidkub',:password => 'honhon'}]

users.each do |u|
>>>>>>> litu-cucumber
  Staff.create!(u)
end
