# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'digest/md5'


detail = [{:roomname => "ENGR301", :amount => 200, :room_type=>"classroom"},{:roomname => "ENGR302", :amount => 100, :room_type=>"classroom"},{:roomname => "ENGR303", :amount => 100, :room_type=>"classroom"},{:roomname => "ENGR304", :amount => 50, :room_type=>"classroom"},{:roomname => "ENGR418", :amount => 20, :room_type=>"auditorium"}]


detail.each do |d|
  DetailRoom.create!(d)
end

user = [{:username => 'naidkub' , :password => Digest::MD5.hexdigest('honhon'), :firstname => 'Naidkub', :lastname => 'Masterhon'}]
user.each do |u|
  Staff.create!(u)
end

rooms = Room.create!([
{roomname: "ENGR301", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "monday", seventh: "free", eighth: "free"},
{roomname: "ENGR301", first: "free", second: "busy", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "tuesday", seventh: "busy", eighth: "busy"},
{roomname: "ENGR301", first: "free", second: "busy", third: "busy", fourth: "busy", fifth: "busy", sixth: "free", day: "wednesday", seventh: "free", eighth: "free"},
{roomname: "ENGR301", first: "free", second: "busy", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "thursday", seventh: "busy", eighth: "free"},
{roomname: "ENGR301", first: "free", second: "busy", third: "busy", fourth: "busy", fifth: "busy", sixth: "free", day: "friday", seventh: "free", eighth: "free"},
{roomname: "ENGR301", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "free", sixth: "free", day: "saturday", seventh: "free", eighth: "free"},
{roomname: "ENGR301", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"},
{roomname: "ENGR302", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "monday", seventh: "free", eighth: "free"},
{roomname: "ENGR302", first: "free", second: "busy", third: "free", fourth: "free", fifth: "busy", sixth: "free", day: "tuesday", seventh: "free", eighth: "free"},
{roomname: "ENGR302", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "wednesday", seventh: "busy", eighth: "free"},
{roomname: "ENGR302", first: "free", second: "busy", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "thursday", seventh: "busy", eighth: "free"},
{roomname: "ENGR302", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "friday", seventh: "free", eighth: "free"},
{roomname: "ENGR302", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "saturday", seventh: "free", eighth: "free"}, 
{roomname: "ENGR302", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"},
{roomname: "ENGR303", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "monday", seventh: "busy", eighth: "free"},
{roomname: "ENGR303", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "tuesday", seventh: "free", eighth: "free"},
{roomname: "ENGR303", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "wednesday", seventh: "free", eighth: "free"},
{roomname: "ENGR303", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "thursday", seventh: "free", eighth: "free"},
{roomname: "ENGR303", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "friday", seventh: "free", eighth: "free"},
{roomname: "ENGR303", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "saturday", seventh: "free", eighth: "free"},
{roomname: "ENGR303", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"},
{roomname: "ENGR304", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "monday", seventh: "free", eighth: "busy"},
{roomname: "ENGR304", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "tuesday", seventh: "busy", eighth: "free"},
{roomname: "ENGR304", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "wednesday", seventh: "busy", eighth: "free"},
{roomname: "ENGR304", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "thursday", seventh: "busy", eighth: "free"},
{roomname: "ENGR304", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "friday", seventh: "busy", eighth: "free"},
{roomname: "ENGR304", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "free", sixth: "free", day: "saturday", seventh: "free", eighth: "free"},
{roomname: "ENGR304", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"},
{roomname: "ENGR418", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "monday", seventh: "free", eighth: "busy"},
{roomname: "ENGR418", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "tuesday", seventh: "busy", eighth: "free"},
{roomname: "ENGR418", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "free", day: "wednesday", seventh: "busy", eighth: "free"},
{roomname: "ENGR418", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "thursday", seventh: "busy", eighth: "free"},
{roomname: "ENGR418", first: "free", second: "busy", third: "busy", fourth: "free", fifth: "busy", sixth: "busy", day: "friday", seventh: "busy", eighth: "free"},
{roomname: "ENGR418", first: "busy", second: "busy", third: "busy", fourth: "free", fifth: "free", sixth: "free", day: "saturday", seventh: "free", eighth: "free"},
{roomname: "ENGR418", first: "free", second: "free", third: "free", fourth: "free", fifth: "free", sixth: "free", day: "sunday", seventh: "free", eighth: "free"}
])


tools = [{:roomname=>"ENGR301",:amplifier=>1,:microphone=>1,:computer=>1,:visualizer=>1,:loudspeaker=>4},
         {:roomname=>"ENGR302",:amplifier=>1,:microphone=>1,:computer=>1,:visualizer=>1,:loudspeaker=>4},
         {:roomname=>"ENGR303",:amplifier=>1,:microphone=>1,:computer=>1,:loudspeaker=>4,:overhead_projector=>1},
         {:roomname=>"ENGR304",:amplifier=>1,:microphone=>1,:computer=>1,:overhead_projector=>1,:loudspeaker=>2},
{:roomname=>"ENGR418",:amplifier=>1,:microphone=>20,:computer=>1,:overhead_projector=>1,:loudspeaker=>2,:lcd_projector=>1}]

tools.each do |u|
	Tool.create!(u)
end

forms = Form.create!([{position: "student", name: "Ploypailin", surname: "Sirimujalin", institution: "engr", tel: "0878168055", email: "liberty_zero@hotmail.com", roomtype: "classroom", roomname: "ENGR304", date_to_reserve: "2013-03-26", start_time: "8.00", finish_time: "9.30", because: "study", subject: "study", amount_of_people: 22, require_tool: "video_recorder,voice_recorder,visualizer,television"},
{ position: "other", name: "Naidkub", surname: "honhon", institution: "hon", tel: "191", email: "naidkub@hotmail.com", roomtype: "classroom", roomname: "ENGR304", date_to_reserve: "2013-03-25", start_time: "8.00", finish_time: "9.30", because: "play game", subject: "hon", amount_of_people: 20, require_tool: "television,computer"},
{ position: "student", name: "Nadcharin", surname: "Milkwarm", institution: "engr", tel: "0545455455", email: "milkwarm@hotmail.com", roomtype: "classroom", roomname: "ENGR304", date_to_reserve: "2013-03-27", start_time: "8.00", finish_time: "9.30", because: "study", subject: "study", amount_of_people: 22, require_tool: "video_recorder,voice_recorder,visualizer"}])


reserf = Reserve.create!([{roomname: "ENGR304", date_to_reserve: "2013-03-26", start_time: "8.00", finish_time: "9.30", tel: "0878168055", email: "liberty_zero@hotmail.com", status: "nonconsidered"},
{roomname: "ENGR304", date_to_reserve: "2013-03-25", start_time: "8.00", finish_time: "9.30", tel: "191", email: "naidkub@hotmail.com", status: "confirm"},
{roomname: "ENGR304", date_to_reserve: "2013-03-27", start_time: "8.00", finish_time: "9.30", tel: "0545455455", email: "milkwarm@hotmail.com", status: "refuse"}])

