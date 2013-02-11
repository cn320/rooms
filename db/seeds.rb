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

user.each do |u|
  Staff.create!(u)
end
