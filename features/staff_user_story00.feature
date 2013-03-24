Feature: Searching for room status and free time
  As a staff
  So that I can see every room status
  I want to see room details and free time from database

Background: Startup with Homepage

  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

  Given the following detail_rooms exist:
  | roomname     | amount    | room_type |
  | ENGR303      | 30        | classroom |
  | ENGR304      | 30        | classroom |
  | ENGR305      | 30        | classroom |
  | ENGR306      | 50        | classroom |
  | ENGR307      | 30        | classroom |
  
  Given the following rooms exist:
  | roomname     | day       | first | second | third | fourth | fifth | sixth | seventh | eighth |
  | ENGR303      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | wednesday | free  |  free  | busy  | free   | busy  | busy  | free    |  free  |
  | ENGR303      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | friday    | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR303      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | wednesday | free  |  free  | busy  | free   | busy  | busy  | free    |  free  |
  | ENGR304      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | friday    | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR304      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | wednesday | free  |  free  | busy  | free   | busy  | busy  | free    |  free  |
  | ENGR305      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | friday    | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR305      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR306      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR306      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR306      | wednesday | free  |  free  | busy  | free   | busy  | busy  | free    |  free  |
  | ENGR306      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR306      | friday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR306      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR306      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR307      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR307      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR307      | wednesday | free  |  free  | busy  | free   | busy  | busy  | free    |  free  |
  | ENGR307      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR307      | friday    | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR307      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR307      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  
  Given the following reserves exist:
  | roomname | date_to_reserve | start_time | finish_time | tel        | email       | status        |
  | ENGR303  | 2015-03-13      | 18.00      | 21.00       | 0878908766 | hon@hon.com | nonconsidered |
  | ENGR304  | 2015-03-13      | 18.00      | 21.00       | 0878908766 | hon@hon.com | confirm       |
  | ENGR303  | 2015-03-13      | 11.00      | 12.30       | 0878908766 | hon@hon.com | nonconsidered |
  | ENGR304  | 2015-03-13      | 11.00      | 12.30       | 0878908766 | hon@hon.com | confirm       |
  | ENGR305  | 2015-03-13      | 11.00      | 12.30       | 0878908766 | hon@hon.com | nonconsidered |
  | ENGR306  | 2015-03-13      | 11.00      | 12.30       | 0878908766 | hon@hon.com | confirm       |

  Given the following forms exist:
  | position | name | surname | institution | tel | email | roomtype | roomname | date_to_reserve | start_time | finish_time | because | subject| amount_of_people | require_tool |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR303 | 2015-03-13 | 18.00 | 21.00 | play game | hon | 20 | microphone,television |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR304 | 2015-03-13 | 18.00 | 21.00 | play game | hon | 20 | microphone,television |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR303 | 2015-03-13 | 11.00 | 12.30 | play game | hon | 20 | microphone,television |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR304 | 2015-03-13 | 11.00 | 12.30 | play game | hon | 20 | microphone,television |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR305 | 2015-03-13 | 11.00 | 12.30 | play game | hon | 20 | microphone,television |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR306 | 2015-03-13 | 11.00 | 12.30 | play game | hon | 20 | microphone,television |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page

  Given I am on the home page
  And I should see "ค้นหาห้องว่าง"
  When I follow "ค้นหาห้องว่าง"
  Then I should be on the search page

Scenario: Search date today 
  When I search with type:"classroom" , amount:"20" , date:"today" , time:"8.00-9.30"
  Then I should be on the search_result page
  And I should see all of word '"ENGR" "18.00-21.00"'

Scenario: Search date yesterday
  When I search with type:"classroom" , amount:"20" , date:"yesterday" , time:"8.00-9.30"
  Then I should be on the search page
  And I should see "Can not reserve room with date past"

Scenario: Search not found
  When I search with type:"classroom" , amount:"" , y-m-d:"2015-March-13" , time:"11.00-12.30"
  Then I should be on the search page
  And I should see "Can not found available room"
  

Scenario: Search found with out amount
  When I search with type:"classroom" , amount:"" , y-m-d:"2015-March-13" , time:"18.00-21.00"
  Then I should be on the search_result page
  And I should see all of word '"ENGR305" "ENGR306" "ENGR307" "2015-03-13" "18.00-21.00"'
  And I should notsee all of word '"ENGR303" "ENGR304"' 

Scenario: Search found with amount
  When I search with type:"classroom" , amount:"20" , y-m-d:"2015-March-13" , time:"18.00-21.00"
  Then I should be on the search_result page
  And I should see all of word '"ENGR305" "ENGR307" "2015-03-13" "18.00-21.00"'
  And I should notsee all of word '"ENGR303" "ENGR304" "ENGR306"' 

 



