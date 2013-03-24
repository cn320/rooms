# encoding: utf-8

class Form < ActiveRecord::Base
 attr_accessible :amount_of_people, :because, :date_to_reserve, :email, :finish_time, :institution, :name, :position, :require_tool, :roomname, :roomtype, :start_time, :subject, :surname, :tel

  validates :position,  :presence => true 
  validates :name,  :presence => true, :length => { :minimum => 3 }
  validates :surname,  :presence => true, :length => { :minimum => 3 }
  validates :institution,  :presence => true
  validates :tel,  :presence => true
  validates :roomtype,  :presence => true
  validates :roomname,  :presence => true
  validates :date_to_reserve,  :presence => true
  validates :start_time,  :presence => true
  validates :finish_time,  :presence => true
  validates :because,  :presence => true
  validates :subject,  :presence => true
  validates :amount_of_people,  :presence => true

  validates :email,  :presence => true

  def self.create_html_temp(data)
    fileHtml = File.new("./public/temp_pdf.html", "w+")
    fileHtml.puts fileHtml.puts '<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="printpdf.css" rel="stylesheet" type="text/css">  
</head>
<body>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<img alt="logo" src="images/Engtu.jpg">
<br>
<br>
<br>
<br>
<div id="printpdf">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<h1>แบบฟอร์มการขอใช้ห้อง คณะวิศวกรรมศาสตร์</h1>
<br>
<br>
<br>
<br>
<br>
<br>
<p>สถานะ : Student</p>
<br>
<br>
<br>
<br>
<p>ชื่อจริง : Ploypailin</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<p>นามสกุล : Sirimujalin </p>
<br>
<br>
<br>
<br>
<p>สังกัด : ENGR </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<br>
<br>
<br>
<p>เบอร์โทรศัพท์ : 0897888888 </p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<p>Email : liberty@gioi.com</p>
<br>
<br>
<br>
<br>
<br>
<p>มีความประสงค์จะขอใช้ : </p>
<p>ห้องเรียน</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<p>ห้อง ENGR : ENGR301 </p>
<br>
<br>
<br>
<br>
<br>
<p>ในวันที่: 2013-03-13</p>
<p>เวลา&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
8.00 น.&nbsp;&nbsp;&nbsp;ถึงเวลา : 9.30  น.</p>
<br>
<br>
<br>
<br>
<br>
<p>เพื่อใช้ใน &nbsp;&nbsp;&nbsp;: นอน </p>
<br>
<br>
<br>
<br>
<br>
<p>วิชา/เรื่อง : การนอน</p>
<br>
<br>
<br>
<br>
<br>
<p>ผู้เข้าร่วมประชุม/สัมนา/ฟังบรรยาย จำนวน:&nbsp;&nbsp;&nbsp;1  คน</p>
<br>
<br>
<br>
<br>
<p>**********************************************************************************************************************************************************</p>
<br>
<br>
<br>
<br>
<b><p>อุปกรณ์โสตฯ ที่ต้องการ</p></b>
<br>
<br>
<br>
<br>
<p>บลาๆๆๆๆๆๆๆ</p>
<p>skldsaldasldkas;k</p>
<p>wkd;akdlakdlaskdlsakdlsajld</p><br>

</div>
</body>
</html>'
    fileHtml.close()
    return fileHtml
  end
  
end
