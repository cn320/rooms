Feature: delete room data

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can delete room data
  I want to delete room data

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
  And I should see "ดูข้อมูลห้อง ENGR303"
  When I follow "ดูข้อมูลห้อง ENGR303"
  Then I should be on the "ENGR303" room detail page

Scenario: can delete room data that want to delete
  When I am on the "ENGR303" room detail page
  Then I should see "ลบข้อมูลห้อง ENGR303"
  When I follow "ลบข้อมูลห้อง ENGR303"
  Then I should be on the room list page
  And I should see "Delete success"
  And I should not see "ENGR303"
  





