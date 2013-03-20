Given /the following reserves exist/ do |reserves_table|
  reserves_table.hashes.each do |att|
    Reserve.create!(att)
  end
end

Given /the following forms exist/ do |forms_table|
  forms_table.hashes.each do |att|
    Form.create!(att)
  end
end

Then /I should see "(.*)" and "(.*)" in reserve list/ do |t1,t2|
  step %{I should see "#{t1}"}
  step %{I should see "#{t2}"}
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  #flunk "Unimplemented" # remove when done
  regexp = Regexp.new "(.*)#{e1}(.*)#{e2}(.*)", Regexp::MULTILINE
  page.body.should =~ regexp
  #str_html = page.body
  #rows = str_html.scan(/#{e1}(.*)#{e2}/m).size
  #rows.should == 1
end

When /I (un)?check the following section: "(.*)" in "(.*)"/ do |uncheck, section,day|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  section = section.split(", ")
  section.each do |sec|
    step %{I #{uncheck}check "#{day}[#{sec}]"}
  end
  
end

When /I fill in "(.*)" with today/ do |field|
  date_today = Date.today.to_s
  step %{I fill in "#{field}" with "#{date_today}"}
end
