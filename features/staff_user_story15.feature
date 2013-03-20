Feature: Logout
  As a staff
  So that I can logout
  I want to logout

Background: Startup with Homepage

  Given the following staff exist:
  | username     | password |
  | naidkub      | honhon   |

  Given the following rooms exist:
  | roomname     | day       | first | second | third | fourth | fifth | sixth | seventh | eighth |
  | ENGR303      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | wednesday | free  |  free  | busy  | free   | busy  | busy  | free    |  free  |
  | ENGR303      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | friday    | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR303      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | monday    | free  |  free  | busy  | busy   | free  | busy  | free    |  free  |
  | ENGR304      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | wednesday | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | friday    | busy  |  free  | busy  | busy   | free  | busy  | free    |  busy  |
  | ENGR304      | saturday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR304      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | monday    | free  |  free  | busy  | busy   | free  | busy  | free    |  free  |
  | ENGR305      | tuesday   | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR305      | wednesday | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | thursday  | free  |  busy  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR305      | friday    | busy  |  free  | busy  | busy   | free  | busy  | free    |  busy  |
  | ENGR305      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR305      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  And I should see "Log out"

Scenario: clear all room data
  
  When I follow "Log out"
  Then I should be on the home page
  And I should not see "สวัสดี คุณ"


 



