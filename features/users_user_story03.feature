Feature: User can not go to staff zone by key url
  As an User's
  So that I can not go to staff zone by key url
  I want to redirect to index

Background: Startup with Homepage

  Given the following detail_rooms exist:
  | roomname     | amount    | room_type |
  | ENGR303      | 30        | classroom |
  | ENGR304      | 30        | classroom |

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

   Given the following reserves exist:
  | roomname | date_to_reserve | start_time | finish_time | tel        | email       | status        |
  | ENGR303  | 2015-03-13      | 18.00      | 21.00       | 0878908766 | hon@hon.com | nonconsidered |

  Given the following forms exist:
  | position | name | surname | institution | tel | email | roomtype | roomname | date_to_reserve | start_time | finish_time | because | subject| amount_of_people | require_tool |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR303 | 2015-03-13 | 18.00 | 21.00 | play game | hon | 20 | microphone,television |

  Given the following welcomes exist:
  | choose  | 
  | false   | 
Scenario: user can not go to staff zone page
  Given I am on the staff page
  Then I should be on the home page
  Given I am on the room list page
  Then I should be on the home page
  Given I am on the "ENGR303" room detail page
  Then I should be on the home page
  Given I am on the edit room "ENGR303" page
  Then I should be on the home page
  Given I am on the reserve detail page
  Then I should be on the home page
  Given I am on the reserve detail id:"1" page
  Then I should be on the home page
  Given I am on the pic list page
  Then I should be on the home page
  Given I am on the add new pic page
  Then I should be on the home page
  Given I am on the new room page
  Then I should be on the home page
  Given I am on the pic id "1" change state page
  Then I should be on the home page


