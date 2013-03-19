Feature: User can reserve available room
  As a user’s
  So that I can making an online reservation
  I want to filling reservation data and sending requests

Background: Startup with Homepage
  Given the following detail_rooms exist:
  | roomname     | amount    | room_type |
  | ENGR303      | 30        | classroom |
 
  Given the following rooms exist:
  | roomname     | day       | first | second | third | fourth | fifth | sixth | seventh | eighth |
  | ENGR303      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | wednesday | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | friday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | saturday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |

  Given the following tools exist:
  | roomname     | amplifier | microphone | computer | overhead_projector | lcd_projector | television | voice_recorder | video_recorder | visualizer | loudspeaker |
  | ENGR303      | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

  And I am on the home page
  And I should see "ค้นหาห้องว่าง"
  When I follow "ค้นหาห้องว่าง"
  Then I should be on the search page
  When I search with type:"classroom" , amount:"25" , day:"monday" , time:"8.00-9.30"
  Then I should be on the search_result page
  And I should see "ENGR303"
  When I follow "จองห้อง"
  Then I should be on the room id "1" status page
  And I should see all of word '"ENGR303" "monday" "amplifier"'

Scenario: reserve the engr303 with day is not today
  
  When I follow "ทำรายการจองห้อง ENGR303"
  Then I should be on the form page
  When I fill in "form[name]" with "Ploypailin"
  And I fill in "form[surname]" with "Sirimujalin"
  And I check "form[position]"
  And I fill in "form[institution]" with "Student TU"
  And I fill in "form[tel]" with "0878168055"
  And I fill in "form[email]" with "liberty_zero@hotmail.com"
  
Scenario: reserve the engr303 with date is today
  
