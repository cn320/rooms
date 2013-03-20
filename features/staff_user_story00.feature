Feature: Searching for room status and free time
  As a staff
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
  
  Given the following reserves exist:
  | roomname | date_to_reserve | start_time | finish_time | tel        | email       | status        |
  | ENGR303  | 2013-03-13      | 16.30      | 18.00       | 0878908766 | hon@hon.com | nonconsidered |
  | ENGR304  | 2013-03-13      | 16.30      | 18.00       | 0878908766 | hon@hon.com | confirm       |

  Given the following forms exist:
  | position | name | surname | institution | tel | email | roomtype | roomname | date_to_reserve | start_time | finish_time | because | subject| amount_of_people | require_tool |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR303 | 2013-03-13 | 16.30 | 18.00 | play game | hon | 20 | microphone,television |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR304 | 2013-03-13 | 16.30 | 18.00 | play game | hon | 20 | microphone,television |

  Given the following staff exist:
  | username     | password |
  | naidkub      | honhon   |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page

  Given I am on the home page
  And I should see "ค้นหาห้องว่าง"
  When I follow "ค้นหาห้องว่าง"
  Then I should be on the search page

Scenario: Search date today
  

Scenario: Search date yesterday

Scenario: Search not found
  

Scenario: Search found
  

 



