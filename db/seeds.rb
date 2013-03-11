# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

detail = [{:roomname => "ENGR301", :amount => 30},{:roomname => "ENGR302", :amount => 30},{:roomname => "ENGR303", :amount => 50},{:roomname => "ENGR304", :amount => 50}]
detail.each do |d|
  DetailRoom.create!(d)
end
res = [{:name => 'litu' , :roomname => 'engr313', :section => '8.00-9.30'}]

user = [{:username => 'naidkub' , :password => 'honhon'}]

res.each do |r|
  Reserve.create!(r)
end

user.each do |u|
  Staff.create!(u)
end

rooms = Room.create([{roomname: "ENGR301", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "monday", seventh: "free", eighth: "free"}, {roomname: "ENGR301", first: "free", second: "busy", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "tuesday", seventh: "busy", eighth: "busy"}, 
	   {roomname: "ENGR301", first: "free", second: "busy", third: "busy", fourth: "busy", fifth: "busy", sixth: "free", day: "wednesday", seventh: "free", eighth: "free"},{roomname: "ENGR301", first: "free", second: "busy", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "thursday", seventh: "busy", eighth: "free"}, 
	   {roomname: "ENGR301", first: "free", second: "busy", third: "busy", fourth: "busy", fifth: "busy", sixth: "free", day: "friday", seventh: "free", eighth: "free"}, {roomname: "ENGR301", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "free", sixth: "free", day: "saturday", seventh: "free", eighth: "free"}, 
       {roomname: "ENGR301", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"}, {roomname: "ENGR302", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "monday", seventh: "free", eighth: "free"}, 
       {roomname: "ENGR302", first: "free", second: "busy", third: "free", fourth: "free", fifth: "busy", sixth: "free", day: "tuesday", seventh: "free", eighth: "free"}, {roomname: "ENGR302", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "wednesday", seventh: "busy", eighth: "free"},
       {roomname: "ENGR302", first: "free", second: "busy", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "thursday", seventh: "busy", eighth: "free"}, {roomname: "ENGR302", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "saturday", seventh: "free", eighth: "free"}, 
       {roomname: "ENGR301", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"}, {roomname: "ENGR303", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "monday", seventh: "busy", eighth: "free"},
       {roomname: "ENGR303", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "tuesday", seventh: "free", eighth: "free"}, {roomname: "ENGR303", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "wednesday", seventh: "free", eighth: "free"},
       {roomname: "ENGR303", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "thursday", seventh: "free", eighth: "free"},{roomname: "ENGR302", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "friday", seventh: "free", eighth: "free"}, 
       {roomname: "ENGR303", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "friday", seventh: "free", eighth: "free"}, {roomname: "ENGR303", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "saturday", seventh: "free", eighth: "free"},
       {roomname: "ENGR303", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"},{roomname: "ENGR304", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "monday", seventh: "free", eighth: "busy"},
       {roomname: "ENGR304", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "tuesday", seventh: "busy", eighth: "free"},{roomname: "ENGR304", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "wednesday", seventh: "busy", eighth: "free"},
       {roomname: "ENGR304", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "thursday", seventh: "busy", eighth: "free"},{roomname: "ENGR304", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "friday", seventh: "busy", eighth: "free"},
       {roomname: "ENGR304", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "free", sixth: "free", day: "saturday", seventh: "free", eighth: "free"},{roomname: "ENGR304", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"}
       ])

