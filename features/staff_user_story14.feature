Feature: Clear All room data
  As a staff
  So that I can clear all room data
  I want to clear all room data

Background: Startup with Homepage

  Given the following detail_rooms exist:
  | roomname     | amount    | room_type  |
  | ENGR303      | 100       | classroom  | 

  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

  Given the following rooms exist:
  | roomname     | day       | first | second | third | fourth | fifth | sixth | seventh | eighth |
  | ENGR303      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | wednesday | free  |  free  | busy  | free   | busy  | busy  | free    |  free  |
  | ENGR303      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | friday    | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR303      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  

  Given the following tools exist:
  | roomname     | amplifier | microphone | computer | overhead_projector | lcd_projector | television | voice_recorder | video_recorder | visualizer | loudspeaker |
  | ENGR303      | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  When I follow "กำหนดข้อมูลห้องสำหรับเทอมใหม่"
  Then I should be on the staff page

Scenario: check all scheduler is free

  When I follow "รายชื่อห้องที่มีทั้งหมดในระบบ"
  And I should see "ดูข้อมูลห้อง ENGR303"
  When I follow "ดูข้อมูลห้อง ENGR303"
  Then I should see "ว่าง" 
  And I should see "ไม่ว่าง" equal to "1"
  


 



