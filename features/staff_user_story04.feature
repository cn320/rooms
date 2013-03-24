Feature: Modify room data

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can modify room data
  I want to modify room data in database

Background: Startup with Staffpage

  Given the following detail_rooms exist:
  | roomname     | amount    | room_type |
  | ENGR303      | 30        | classroom |
  | ENGR304      | 30        | classroom |

  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

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

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  When I follow "รายชื่อห้องที่มีทั้งหมดในระบบ"
  Then I should be on the room list page

Scenario: Modify room data that not the same name exist in database 
  When I follow "ดูข้อมูลห้อง ENGR303"
  Then I should be on the "ENGR303" room detail page
  When I follow "แก้ไขข้อมูลห้อง ENGR303"
  Then I should be on the edit room "ENGR303" page
  And I should see "ENGR303"
  When I fill in "droom[roomname]" with "ENGR305"
  And I fill in "droom[amount]" with "100"
  And I fill "2" in all of tools
  And I press "ยืนยันการแก้ไขข้อมูลห้อง"
  Then I should be on the "ENGR305" room detail page
  And I should not see "ENGR303"
  And I should see "2"

Scenario: Modify room data that have the same name exist in database 
  When I follow "ดูข้อมูลห้อง ENGR303"
  Then I should be on the "ENGR303" room detail page
  When I follow "แก้ไขข้อมูลห้อง ENGR303"
  Then I should be on the edit room "ENGR303" page
  And I should see "ENGR303"
  When I fill in "droom[roomname]" with "ENGR304"
  And I fill in "droom[amount]" with "100"
  And I fill "2" in all of tools
  And I press "ยืนยันการแก้ไขข้อมูลห้อง"
  Then I should be on the room list page
  And I should see "ENGR303"
  And I should see "ENGR304"
  And I should see "Can not modify roomname,Already roomname in database"
  
  
