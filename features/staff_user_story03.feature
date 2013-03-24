Feature: Staff can reserve available room
  As a staffs’s
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

  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  Given I am on the search page

Scenario: reserve the engr303 with day is not today
  When I search with type:"classroom" , amount:"25" , y-m-d:"2015-March-13" , time:"8.00-9.30"
  Then I should be on the search_result page
  And I should see "ENGR303"
  When I follow "จองห้อง"
  Then I should be on the room id "5" status page
  And I should see all of word '"ENGR303" "8.00-9.30"'
  When I follow "ทำรายการจองห้อง ENGR303"
  Then I should be on the form page
  When I fill in "form[name]" with "Ploypailin"
  And I fill in "form[surname]" with "Sirimujalin"
  And I fill in "form[institution]" with "Student TU"
  And I fill in "form[tel]" with "0878168055"
  And I fill in "form[email]" with "liberty_zero@hotmail.com"
  And I fill in "form[date_to_reserve]" with "2015-03-13"
  And I fill in "form[because]" with "Study"
  And I fill in "form[subject]" with "CN200"
  And I fill in "form[amount_of_people]" with "20"
  And I fill in "form[roomtype]" with "classroom"
  And I fill in "form[roomname]" with "ENGR303"
  And I fill in "form[start_time]" with "8.00"
  And I fill in "form[finish_time]" with "9.30"
  And I check "form[position][teacher]"
  And I check "form[require_tool][microphone]"
  And I check "form[require_tool][visualizer]"
  And I press "submit"
  Then I should be on the print page
  And I should see "Create form and reserve success"
  And I should see all of word '"ENGR303" "teacher" "2015-03-13" "8.00" "9.30" "microphone" "visualizer"'
  
  
Scenario: reserve the engr303 with date is today
  When I search with type:"classroom" , amount:"25" , date:"today" , time:"8.00-9.30"
  Then I should be on the search_result page
  And I should see "ENGR303"
  When I follow "จองห้อง"
  Then I should be on the room id of date:"today" status page
  And I should see all of word '"ENGR303" "8.00-9.30"'
  When I follow "ทำรายการจองห้อง ENGR303"
  Then I should be on the form page
  When I fill in "form[name]" with "Ploypailin"
  And I fill in "form[surname]" with "Sirimujalin"
  And I fill in "form[institution]" with "Student TU"
  And I fill in "form[tel]" with "0878168055"
  And I fill in "form[email]" with "liberty_zero@hotmail.com"
  And I fill in "form[date_to_reserve]" with today
  And I fill in "form[because]" with "Study"
  And I fill in "form[subject]" with "CN200"
  And I fill in "form[amount_of_people]" with "20"
  And I fill in "form[roomtype]" with "classroom"
  And I fill in "form[roomname]" with "ENGR303"
  And I fill in "form[start_time]" with "8.00"
  And I fill in "form[finish_time]" with "9.30"
  And I check "form[position][teacher]"
  And I check "form[require_tool][microphone]"
  And I press "submit"
  Then I should be on the print page
  And I should see "Create form and reserve success"
  And I should see all of word '"ENGR303" "teacher" "8.00" "9.30" "microphone"'


  
