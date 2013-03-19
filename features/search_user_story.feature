Feature: Searching for room status and free time
  As a user’s and staff
  So that I can see every room status
  I want to see room details and free time from database

Background: Startup with Homepage

 Given the following detail_rooms exist:
  | roomname     | amount    | room_type |
  | ENGR303      | 30        | classroom |
  | ENGR304      | 30        | classroom |
  | ENGR305      | 30        | classroom |
  | ENGR306      | 50        | classroom |
  
  Given the following rooms exist:
  | roomname     | day       | first | second | third | fourth | fifth | sixth | seventh | eighth |
  | ENGR303      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | monday    | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR306      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |

  And I am on the home page
  And I should see "ค้นหาห้องว่าง"
  When I follow "ค้นหาห้องว่าง"
  Then I should be on the search page

Scenario: Search base on amount
  When I fill in "Amount" with "25"
  And I select "classroom" from "room_type_type"
  And I select "monday" from "day_day"
  And I press "search room"
  Then I should be on the search_result page
  And I should see "ENGR303"
  And I should see "ENGR304"
  And I should not see "ENGR305"
  And I should not see "ENGR306"

Scenario: Not fill amount
  When I select "classroom" from "room_type_type"
  And I select "monday" from "day_day"
  And I press "search room"
  Then I should be on the search_result page
  And I should see "ENGR303"
  And I should see "ENGR304"
  And I should not see "ENGR305"
  And I should see "ENGR306"

 



