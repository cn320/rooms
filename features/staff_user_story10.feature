Feature: See room detail
  As a Staff’s
  So that I can making an online reservation
  I want to filling reservation data and sending requests

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

  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  When I follow "รายชื่อห้องที่มีทั้งหมดในระบบ"
  Then I should be on the room list page
  When I follow "ดูข้อมูลห้อง ENGR303"
  Then I should be on the "ENGR303" room detail page

Scenario: See room detail
  When I am on the "ENGR303" room detail page
  Then I should see "ENGR303"
  And I should see "วันจันทร์"
  And I should see "วันอังคาร"
  And I should see "วันพุธ"
  And I should see "วันพฤหัสบดี"
  And I should see "วันศุกร์"
  And I should see "วันเสาร์"
  And I should see "วันอาทิตย์"
 


